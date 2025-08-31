#include <iostream>
using namespace std;
int main(){
    int n = 3;
    int m[3][3];
    int soma1 = 0;
    int soma2 = 0;
    int soma3 = 0;


    for(int i=0; i<n;i++){
        for(int j = 0; j< n; j++){
            cin >> m[i][j];
        }
    }

    for(int i=0; i<n;i++){
        for(int j = 0; j< n; j++){
            if(j==0){
                soma1 += m[i][j];
            }else if(j==1){
                soma2+=m[i][j];
            }else{
                soma3+=m[i][j];
            }
        }
    }

    cout<<"Coluna 0: "<<soma1<<endl;
    cout<<"Coluna 1: "<<soma2<<endl;
    cout<<"Coluna 2: "<<soma3<<endl;



    return 0;
}