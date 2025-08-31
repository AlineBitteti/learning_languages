#define _USE_MATH_DEFINES;
#include <iostream>
#include <vector>
#include <iomanip>
#include <cmath>
using namespace std;

int main(){
    int x;
    double count;
    double y = 0;
    cin >> x;
    vector<double> notas(x);
    for(int i =0; i < x; i++){
        cin >> notas[i];
    };

    for(int i =0; i < x; i++){
        count += notas[i];
    };
    
    count /= x;
    y = M_PI * 4;
    cout << fixed << setprecision(2) << count << endl;

    return 0;
}