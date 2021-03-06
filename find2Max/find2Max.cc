#include <iostream>
#include<stdlib.h>
#include<time.h>


#define N 10000

typedef struct{											 //2 int vector
	int x,y;
}int2;

int2 find2Max(int* ar){
	int max,max2;
	if (ar[0] > ar[1]){
		max = ar[0];
		max2 =ar[1];
		
	} else{
		max = ar[1];
		max2 =ar[0];
	}
	
	for (int i = 0;i<N;i++){
		if(ar[i] > max ){
			max = ar[i];
		}
		if(ar[(i+1)%N] > max2 && ar[(i+1)%N] < max) {
			max2 = ar[i+1];
		}
	}
	return {max,max2};
	
}


int main(){
	srand(time(NULL));									//set seed based on current time
	
	int ar[N];
	for (int i = 0;i<N;i++){
		ar[i] = rand()%50;								//set randon between 0 and 50		
		std::cout<<ar[i]<<'\n';								
	}
	
	std::cout<<"\n Max "<<find2Max(ar).x <<"  Second Max "<<find2Max(ar).y;
}


