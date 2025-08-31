#include <bits/stdc++.h>
using namespace std;

vector<pair<int, string>>jogs;
vector<pair<int, string>>times[1010];

bool ordenar(pair<int,string> a , pair<int, string> b){
    return a.first > b.first;
}
bool ordenarTimes(pair<int,string> a , pair<int, string> b){
    return a.second < b.second;
}

int main(){
    int n, t;
    string nome;
    int habilidade;
    cin>> n >> t;
    for(int i =0; i< n; i++){
        cin >> nome >> habilidade;
        jogs.push_back({habilidade, nome});
    }
    sort(jogs.begin(), jogs.end(), ordenar);
    for(int i = 0; i < jogs.size(); i++){
        // eu sou uma genia q linha gostosa pqp
        times[i % t].push_back(jogs[i]);
    }    
    for(int i = 0; i < t; i++){
        sort(times[i].begin(), times[i].end(), ordenarTimes);
    }
    for(int i =0; i < t; i++){
       cout << "Time" << " " << i + 1 << endl;
       for(int j =0; j < times[i].size(); j++){
        cout<<times[i][j].second<<endl;
       }
       cout << endl;
    }
    return 0;
}