#include <iostream>
#include <queue>;
using namespace std;

int main(){
    int n, m;
    queue<char>equipes;
    for(char c ='A'; c < 'Q'; c++){
        equipes.push(c);
    }
    
    while(equipes.size() > 1){
        cin >> n >> m;
        char a = equipes.front();
        equipes.pop();
        char b = equipes.front();
        equipes.pop();
        if(n > m){ 
            equipes.push(a);
        }
        else{ 
            equipes.push(b);
        }
    }
    cout<< equipes.front()<< endl;

}