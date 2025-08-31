#include <iostream>
using namespace std;

int main(){
    int a;
    int b;
    int tipo1 = 0;
    int tipo2 = 0;
    cin >> a >> b;

    tipo1 = (a*b) + (a-1)* (b-1);
    tipo2 = 2* ((a+b)-2);
    cout << tipo1 << endl << tipo2 << endl;
    return 0;
}
