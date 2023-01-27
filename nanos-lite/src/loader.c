#include <proc.h>
#include <elf.h>
#include "ramdisk1.h"
#include "fs.h"

#ifdef __LP64__
# define Elf_Ehdr Elf64_Ehdr
# define Elf_Phdr Elf64_Phdr
#else
# define Elf_Ehdr Elf32_Ehdr
# define Elf_Phdr Elf32_Phdr
#endif

#if defined(__ISA_AM_NATIVE__)
# define EXPECT_TYPE EM_X86_64
#elif defined(__ISA_RISCV32__)
# define EXPECT_TYPE EM_RISCV
#else
# error Unsupported ISA
#endif

static uintptr_t loader(PCB *pcb, const char *filename) {
  int fd = fs_open(filename, 0, 0);
  
  Elf_Ehdr *elf = (Elf_Ehdr *)(get_ramdisk_st() + get_file_table()[fd].disk_offset);

  assert(*(uint32_t*)elf->e_ident == 0x464c457f);
  assert(elf->e_machine == EXPECT_TYPE);

  int pnum =  elf->e_phnum;
  Elf_Phdr *phdr =  (Elf_Phdr *)(get_ramdisk_st() + get_file_table()[fd].disk_offset + elf->e_phoff);
  for(int i=0; i<pnum ; i++, phdr++){
    if(phdr->p_type == PT_LOAD){
      printf("%x %x %x\n",phdr->p_vaddr, phdr->p_offset, phdr->p_filesz);
      ramdisk_read((uint8_t*)phdr->p_vaddr, phdr->p_offset, phdr->p_filesz);
      for(uintptr_t set_p = phdr->p_filesz; set_p < phdr->p_memsz; set_p++)
        *(uint32_t*)(phdr->p_vaddr + set_p) = 0;
    }
  }

  return elf->e_entry;
}

void naive_uload(PCB *pcb, const char *filename) {
  uintptr_t entry = loader(pcb, filename);
  Log("Jump to entry = %p", entry);
  ((void(*)())entry) ();
}

