#include <bits/stdc++.h>
using namespace std;


void solve(){
    int m,n;
    cin>>m>>n;
    cin.ignore();
    string port, jap;
    map<string,string> dicionario;
    for(int i =0; i<m; i++){
        getline(cin, jap);
        getline(cin,port);
        dicionario.insert({jap, port});
    }
    for(int i =0; i<n; i++){
        string a;
        string palavra;
        getline(cin, a);
        stringstream ss(a);
        while(ss >> palavra){
            if(dicionario.count(palavra)){
                cout << dicionario[palavra] << " ";
            }
            else{
                cout << palavra << " ";
            }
        }
        cout << endl;
        
    }

}



int main(){
    int t;
    cin >> t;
    while(t--){
        solve();
        cout << endl;
    }

    
}
