#include <bits/stdc++.h>
using namespace std;
int mdc(int a , int b){
    if(b == 0) return a;
    else mdc (b, a%b);
}


int mmc(int a , int b){
    return a*b /mdc(a, b);
}

int main(){
    int a, b;
    cin >> a >> b;
    cout << mmc(a,b) << endl;
    return 0;
}