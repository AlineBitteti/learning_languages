#include <iostream>
#include <vector>
#include <map>
using namespace std;


int main(){
    int c,n, a, b;
    cin >> c >> n;
    vector<int> in;
    map<int, int> pi;
    for(int i = 0; i < c; i++){
        cin >> a;
        cin >> b;
        pi.insert({a,b});
    }
    for(int i = 0; i < n; i++){
        cin >> a;
        cin >> b;
        if(pi.count(a)){
            if(pi[a] < b){
                pi.erase(a);
                pi.insert({a,b});
                in.push_back(a);
            }
        }
    }
    for(int i =0; i < (int)in.size(); i++){
        cout << in[i] << " " << pi[in[i]] << endl;
    }
}
