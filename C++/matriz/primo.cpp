#include <bits/stdc++.h>
using namespace std;

bool eh_primo(int x){
    if (x == 1 || x==0) return false;
    for(int i = 2; i * i <= x; i++){
        if(x%i == 0) return false;
    }
    return true;
}

int main(){
    int a;
    int n;
    int qt = 0;
    cin >> n >> a;
    if(eh_primo(a)) cout << "S" << endl;
    else cout << "N" << endl;
    for(int i=0; i< n; i++){
        if(eh_primo(i)){ 
            cout << i<< " ";
        }
        cout << endl;
    }
    return 0;
}