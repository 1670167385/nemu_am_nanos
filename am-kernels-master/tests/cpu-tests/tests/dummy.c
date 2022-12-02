void re(int n)
{
	if(n==0)
	return;
	re(n-1);
}
int main() {
	re(5);
  return 0;
}
