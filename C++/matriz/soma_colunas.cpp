#include <iostream>
using namespace std;

int main(){
    int n=3;
    int m[n][n];
    for(int i=0; i< n; i++){
        for(int j=0; j<n; j++){
            cin>>m[i][j];
        }
    }
    for(int j=0; j< n; j++){
        int soma = 0;
        for(int i=0; i<n; i++){
            soma+=m[i][j];
        }
        cout<<"coluna "<< j << ": " << soma <<endl;
    }


    return 0;

}