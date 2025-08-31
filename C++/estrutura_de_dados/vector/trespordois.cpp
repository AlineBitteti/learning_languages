#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

vector<int> p;

bool ordenar(int a, int b){
    return a > b;
}

int main() {
    int n, aux, soma = 0, soma2 =0;
    cin >> n;
    for (int i =0; i<n; i++){
        cin >> aux;
        p.push_back(aux);
    }
    sort(p.begin(), p.end(),ordenar);
    for(int i=0; i< n; i++){
        if((i+1)%3==0){
            soma2+= p[i];
            soma+=p[i];
        }
        else soma +=p[i];  
    }
    cout << soma - soma2 << endl;
    return 0;
}
