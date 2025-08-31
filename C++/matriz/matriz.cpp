#include <iostream>
using namespace std;

int main(){
    int m[3][3];
    int n = 3;
    int soma1 = 0;
    int soma2 = 0;
    int soma3 = 0;
    int d1 = 0;
    int d2 = 0;
    for(int i = 0; i < n; i++){
        for(int j=0; j< n; j++){
            cin >> m[i][j];
        }
    }
    for(int i = 0; i < n; i++){
        for(int j=0; j< n; j++){
            if(i == j){
                d1+=m[i][j];
            }
            else if ((j -i) ==2 || (i-j)==2)
            {
                d2+=m[i][j];
            }
            if(j ==0){
                soma1+= m[i][j];
            }
            if(j==1){
                soma2+=m[i][j];
            }
            if(j==2){
                soma3+=m[i][j];
            }
            if (i==1 && j==1){
                d2+=m[i][j];
            }
            
        }
    }
     for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cout << m[i][j] << " ";
        }
        cout << endl;
    }
    cout << d2 << d1 << soma1 << soma2 << soma3 << endl;
    if (d1 == d2 && d2 == soma1 && soma1==soma2 && (soma2 ==soma3))
    {
        cout << "SIM" << endl;
    }
    else{
        cout<< "NAO"<< endl;
    }
    
}
