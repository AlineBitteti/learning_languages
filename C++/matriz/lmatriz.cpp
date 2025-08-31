#include <iostream>
using namespace std;
int main(){
    int n = 3;
    int m[n][n];
    int k;
    int count =0;
    for(int i=0; i<n; i++){
        for(int j=0; j<n;j++){
            cin>>m[i][j];
        }
    }
    cin>>k;

    for(int i=0; i<n; i++){
        for(int j=0; j<n;j++){
            if(m[i][j]==k){
                count+=1;
            }
        }
    }
    cout << count;



}


  int buscabinaria(int k, int base, int topo, int v){
    int meio = base + topo/2;

    if(v[meio]==k) return meio;
    
    else if (v[meio]>k) buscaBinaria(k, base, meio - 1, v);

        else buscaBinaria(k, meio + 1, topo, v);
}
    