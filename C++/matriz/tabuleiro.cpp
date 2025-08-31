#include <iostream>
using namespace std;

int main(){
    int n = 8;
    int m[n][n];
    int in = 0;
    for(int i=0; i<n;i++){
        for(int j=0; j<n; j++){
            m[i][j]=in;
            in = 1 - in;
        }
    }
    for(int i=0; i<n;i++){
        for(int j=0; j<n; j++){
           cout<< m[i][j] << " ";
            
        }
        cout<<endl;
    }
    return 0;
}