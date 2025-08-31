#include <iostream>
#include <vector>
using namespace std;

int main(){
    int a;
    int b;
    int aux = 0;
    int soma = 0;
    cin >> a;

    b=a;

    vector <vector<int>> m(a, vector<int>(b));

    for(int i=0; i<a; i++){
        for(int j=0; j<b; j++){
            cin >> m[i][j];
        }
    }

    for(int i=0; i<a; i++){
        for(int j=0; j<b; j++){
            aux += m[i][j];
        }
    }


    return 0;
}
