#include <isa.h>
#include <cpu/cpu.h>

#include <elf.h>




void init_FTRACE(const char* elf_file)
{
//#ifdef CONFIG_FTRACE
  if(elf_file != NULL){
    FILE *fp = fopen(elf_file, "rb");
    Assert(fp, "Can not open '%s'", elf_file);
    Elf32_Ehdr ehdr;
    Elf32_Shdr *shdr;
    int fread_ret;
    //read Ehearder
    fread_ret = fread(&ehdr, sizeof(ehdr), 1, fp);

    if(ehdr.e_shoff)
        fseek(fp, ehdr.e_shoff, SEEK_SET);
    assert(ehdr.e_shoff);
    //read section header , number is e_shnum
    shdr = malloc(sizeof(Elf32_Shdr)*ehdr.e_shnum);
    assert(shdr);
    fread_ret = fread(&shdr, sizeof(shdr), ehdr.e_shnum, fp);

    Log("has opened it ");
    //read string table
    char *stringtb;
    stringtb = malloc(sizeof(char)*(shdr[ehdr.e_shstrndx].sh_size+1));
    assert(stringtb);

    assert(ehdr.e_shstrndx != SHN_UNDEF);//has no string table
    fseek(fp, shdr[ehdr.e_shstrndx].sh_offset, SEEK_SET);
    fread_ret = fread(&stringtb, sizeof(stringtb), 1, fp);
    assert(fread_ret == 1);
    for(int i = 0;i<ehdr.e_shnum;i++)
    {
        printf("[%d]%sq: 0x%x\n", i, &stringtb[shdr[i].sh_name], shdr[i].sh_addr);
    }
  }
//#endif
}