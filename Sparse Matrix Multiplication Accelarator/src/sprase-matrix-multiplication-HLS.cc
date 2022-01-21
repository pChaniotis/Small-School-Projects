#include <iostream>
#include <vector>

typedef std::vector<int> vect;
typedef std::vector<std::vector<int> > matrix;

#define ROW 0
#define COLUMN 1
#define VALUE 2


class sparse{
	
	public:
	int r;
	int c;
	int NNZ;
	matrix data;
	
	public://-------methods---------
	

	
	sparse(const matrix& matrix){
 	
		NNZ = 0;
	 	r = matrix.size();
		c = matrix[0].size();
		
		convertToCSR(matrix);
		
		
 		
 						
	}
	

	
	void insertToCSR(int r, int c, int val){
		
		data.push_back({r,c,val});
	 	NNZ++;
	}
	
	void printData(){
	    std::cout << "\nDimension of Sparse Matrix: " << NNZ << " x " << 3;
	    std::cout << "\nSparse Matrix: \nRow  Column  Value\n";
	 
	    
		for (int i = 0; i < NNZ; i++) {
 
        	std::cout << data[i][ROW] << " 	" << data[i][COLUMN] << "	" << data[i][VALUE] << "\n";
    	}
	}
	
	void convertToCSR(const matrix& matrix){
		
		for (int i = 0; i < r; i++){
	        for (int j = 0; j < c; j++){
	            if (matrix[i][j] > 0){

					insertToCSR(i, j, matrix[i][j]);
				}
			}
		}	
		
	}
	void convertCSRToCSC(){ 
	    int i, j; 
	    for (i = 0; i < NNZ-1; i++)     
	      
	    // Last i elements are already in place 
	    for (j = 0; j < NNZ-i-1; j++) 
	        if (data[j][COLUMN] > data[j+1][COLUMN]) 
	            data[j].swap(data[j+1]);

    }
    
    
    
    
    sparse operator*(sparse b){
		
		
		if(this->r != b.r){
		
			std::cout<<"\nIllegal matrix boundaries\n";
			matrix error = {{0,0},{0,0}};
			return sparse(error);
		}
		
		//initalize a a.row x b.column matrix
		vect vec;
		vec.assign(b.c,0);
		
		matrix C;
		C.assign (this->r,vec);
		
		//convert b to CSC
		//b.convertCSRToCSC();
		
		
		
		
		for(int i = 0;i < this->NNZ;i++){
			
			for(int j = 0;j < b.NNZ;j++){
				
				if(b.data[j][ROW] == this->data[i][COLUMN] ){
					
					C[this->data[i][ROW]][b.data[j][COLUMN]] += this->data[i][VALUE] * b.data[j][VALUE];
				}
				
			}			
			
		}
		
		return sparse(C);
	}
	
	
	
};


matrix mul(matrix& a, matrix& b){
	
	int ra = a.size();
	int ca = a[0].size();

	int rb = b.size();
	int cb = b[0].size();	
	
	if(ra != cb){
		
		std::cout<<"\nIllegal matrix boundaries\n";
		return {{0,0},{0,0}};
	}
	
	vect vec;
	vec.assign(cb,0);
		
	matrix C;
	C.assign (ra,vec);
	
	std::cout<<"Matrix "<<ra<<"x"<<cb<<":"<<std::endl;
	
	for (int i = 0; i < ra; i++) {
        for (int j = 0; j < cb; j++) {

            for (int k = 0; k < rb; k++) {
            	
                C[i][j] += a[i][k] * b[k][j];
            }

            std::cout << C[i][j] << "\t";
        }

        std::cout << std::endl;
    }
	
	return C;

	
}



int main(){
	
	

	
	matrix a =
	    {
	        {1, 0, 0},
	        {0, 0, 5},
	        {7, 0, 0}
	    };
	    
	    
	matrix b =
	    {
	        {0, 0, 2},
	        {0, 1, 0},
	        {8, 6, 0}

	    };
	
	
	
	    
	    
	
	
	sparse obj_a(a);
	obj_a.printData();
			
	sparse obj_b(b);
	obj_b.convertCSRToCSC();
	obj_b.printData();
	
	
	
	mul(a,b);
	
	sparse obj_c = obj_a*obj_b;
	obj_c.printData();
	

	
	
	
	
	

	
}


