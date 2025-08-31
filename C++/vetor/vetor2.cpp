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
        cout << "Mia x" << endl; 
    }else{
        cout << count << endl;
        for(int i=0; i < x; i++){
            if (k == l[i]){
                cout << i << " ";
            }
        }
         cout << endl;
    }
}