#include <bits/stdc++.h>
using namespace std;

set<int> ana;
set<int> bia;
vector<int> anav, biav;

int main() {
    int qa, qb, aux;
    int con_a = 0, con_b = 0;
    cin >> qa >> qb;

    for(int i = 0; i < qa; i++) {
        cin >> aux;
        if(!ana.count(aux)) anav.push_back(aux);
        ana.insert(aux);
    }

    for(int i = 0; i < qb; i++) { // <- corrigido para qb
        cin >> aux;
        if(!bia.count(aux)) biav.push_back(aux);
        bia.insert(aux);
    }

    // agora só conta cartas que a outra não tem
    for(int i = 0; i < anav.size(); i++) {
        if(!bia.count(anav[i])) con_a++; 
    }
    for(int i = 0; i < biav.size(); i++) {
        if(!ana.count(biav[i])) con_b++; 
    }

    int troca = min(con_a, con_b);
    cout << troca << endl;

    return 0;
}
