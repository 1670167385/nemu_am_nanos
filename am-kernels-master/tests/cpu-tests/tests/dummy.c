void p2(int n){
	n++;
}

void p1(int n){
	p2(n-1);
}

void p0(int n)
{
	p1(n-1);
}
int main() {
	p0(5);
  return 0;
}
