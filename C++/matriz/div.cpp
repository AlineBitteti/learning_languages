#include <bits/stdc++.h>
using namespace std;

int charToInt(char a){
    return a - '0';
}

int main(){
    string s;
    cin >> s;
    int soma = 0;
    int u = s.size()-1;
    if(charToInt(s[u]) % 2==0) cout << "S"<< endl;
    else cout << "N"<< endl;
    for(int i = 0; i <=u; i++) { 
        soma += charToInt(s[i]);
    }
    if(soma % 3==0) cout << "S"<< endl;
    else cout << "N"<< endl;

    if(charToInt(s[u]) % 5==0) cout << "S"<< endl;
    else cout << "N"<< endl;

    return 0;
    

}
