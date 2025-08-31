#include <bits/stdc++.h>
using namespace std;


bool primos[10000000];

void crivo(int n){
    for(int i = 2; i<n; i++){
        if(primos[i]){
            for(int j =2; j*i <= n; j ++){
                primos[j*i]=false;
            }
        }
    }
    return;
}

int main(){
    long long n;
    cin >> n;
    for(int i=1; i< n; i++){
        primos[i]=true;
    }
    crivo(n);
    for(int i = 2; i<=n; i++){
        if (primos[i]) cout << i<< " ";
    }
    cout << endl;
    return 0;
}