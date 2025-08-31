#include <iostream>
using namespace std;
int main(){
    int x=10;
    int count = 0;
    int l[10];
    for(int i=0; i < x; i++){
        cin >> l[i];
    }

    int k;
    cin >> k;

    for(int i=0; i < x; i++){
        if (l[i] == k){
            count++;
        }
    }
    if(count == 0){
        cout << "NAO" << endl; 
    }else{
        cout << "SIM" << endl;
    }
}