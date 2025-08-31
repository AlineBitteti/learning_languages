#include <iostream>
#include <set>
#include <algorithm>
#include <vector>
using namespace std;

set<int> ana;
set<int> bia;

int main() {
    int qa, qb, aux;
    cin >> qa >> qb;

    for (int i = 0; i < qa; i++) {
        cin >> aux;
        ana.insert(aux);
    }
    for (int i = 0; i < qb; i++) {
        cin >> aux;
        bia.insert(aux);
    }

    // con_a = ana - bia
    vector<int> diff_a;
    set_difference(ana.begin(), ana.end(),
                   bia.begin(), bia.end(),
                   back_inserter(diff_a));
    int con_a = diff_a.size();

    // con_b = bia - ana
    vector<int> diff_b;
    set_difference(bia.begin(), bia.end(),
                   ana.begin(), ana.end(),
                   back_inserter(diff_b));
    int con_b = diff_b.size();

    int troca = min(con_a, con_b);
    if (troca > 4) troca = 4;

    cout << troca << endl;
    return 0;
}
