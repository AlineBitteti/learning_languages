#include <iostream>
#include <vector>
using namespace std;

int main(){
    int a;
    int b;
    int aux;
    cin >> a;
    vector<int> falt(a);
    
    for(int i = 0; i < a; i++) {
        cin >> b; 

        if(i == 0){
            aux = i;
        } else if(aux != (b - 1)) {
            falt.push_back(b); 
        }
    }
}