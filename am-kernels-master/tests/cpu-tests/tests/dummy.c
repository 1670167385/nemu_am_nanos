void hanoi(int n, int src,int dst,int via){
	if(n>=1)
	{
		hanoi(n-1,src,via,dst);
		hanoi(n-1,via,dst,src);
	}
}


int main() {
	hanoi(15,1,3,2);
  return 0;
}
