#include <bits/stdc++.h>
using namespace std;

int main(){
    stack<int> chefe;
    int n, soma=0, aux;
    cin>>n;
    for(int i =0; i < n; i++){
        cin>>aux;
        if(aux!=0){
            chefe.push(aux);
            soma+=aux;
        }
        else{
            soma-=chefe.top();
            chefe.pop();
        }
    }
    cout<<soma;
}
