#include <bits/stdc++.h>

using namespace std;


vector<double> estrada;
vector<double> dist;


int main() {
    int tam, cid;
    double soma =0, resul, aux2, aux;
    cin>> tam >> cid;
    estrada.push_back(tam);
    for(int i=0; i<cid; i++){
        cin >> aux;
        estrada.push_back(aux);
    }
    sort(estrada.begin(), estrada.end());
    for(int i=0; i< cid; i++){
        if(i==0){
            aux2 = estrada[i];
            soma = (estrada[i+1]-estrada[i])/2;
            dist.push_back(aux2+soma);
            aux2=soma;
        }
        else if(i == cid - 1){
            soma = estrada[i+1]-estrada[i];
            dist.push_back(aux2+soma);
        }
        else{
            soma = (estrada[i+1]-estrada[i])/2;
            dist.push_back(soma+aux2);
            aux2=soma;
        }
    }
    for(int i=0; i < (int)dist.size(); i++){
        if(i==0) resul = dist[i];
        else if(resul > dist[i]) resul = dist[i];
    }
    cout<< fixed << setprecision(2) << resul << endl;
    
    
    
    return 0;
}
