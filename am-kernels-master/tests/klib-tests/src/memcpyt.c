#include<klibtest.h>
#define N 32
uint8_t data[N*2];

void reset() {
  int i;
  for (i = 0; i < N; i ++) {
    data[i] = i + 1;
  }
}

// 检查[l,r)区间中的值是否依次为val, val + 1, val + 2...
void check_seq(int l, int r, int val) {
  int i;
  for (i = l; i < r; i ++) {
    assert(data[i] == val + i - l);
  }
}

// 检查[l,r)区间中的值是否均为val
void check_eq(int l, int r, int val) {
  int i;
  for (i = l; i < r; i ++) {
    assert(data[i] == val);
  }
}

void test_memcpy() {
    int len[6]={1,2,4,8,16,32};
    for(int i=1;i<6;i++){// times
        for(int j=0;j<N;j+=len[i])
        {
            memcpy(data+N+j, data+j, len[i]);
        }
        check_seq(N,2*N,1);
    }
}

int main()
{
  reset();
  test_memcpy();
  return 0;
}
