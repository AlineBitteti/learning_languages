#include <bits/stdc++.h>

using namespace std;

vector<int> molduras;

int main() {
    int a, l, n, aux, auxl,mold, resul;
    double aux3;
    cin>>a>>l>>n;
    mold = a*l;
    for(int i=0; i<n;i++){
        cin >> aux >> auxl;
        molduras.push_back(aux*auxl);
    }
    for(int i=0; i < (int)molduras.size(); i++){
        if(i==0){
            aux3 = (molduras[i]-mold);
            resul = i + 1;
        } 
        else if(aux3 > (molduras[i]- mold) && molduras[i]>mold){
            resul = i + 1;
            aux3= molduras[i]- mold;
        }
    }
    if(resul == 1 && molduras[0] < mold) cout << -1 << endl;
    else cout << resul; 

    return 0;
}

