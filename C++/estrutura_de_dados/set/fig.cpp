#include <iostream>
#include <set>
#include <vector>
using namespace std;
#include <unordered_set>

unordered_set<int> fig;
unordered_set<int> carim;

int main() {
    int n, m, c, a;
    cin >> n >> c >> m;
    for(int i=0; i < c; i++){
        cin >> a;
        carim.insert(a);
    }
    for(int i=0; i < m; i++){
        cin >> a;
        if(!fig.count(a)){
            if(carim.count(a)){
                c-=1;
            } 
            fig.insert(a);
        }
    }
    cout << c;


    return 0;
}
