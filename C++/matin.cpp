#include <iostream>
#include <queue>

using namespace std;

int main(){
    queue<int> jogo;
    int aux;

    for (int i=1; i < 17; i++){
        cin >> aux;
        jogo.push(aux);
    }

    int a = jogo.front();
    jogo.pop();
    int b = jogo.front();
    jogo.pop();
    if (a==1 || b ==1 && b != 9 || a != 9){
        jogo.push(1);
    } else if(a==9 || b ==9 && b != 1 || a != 1){
        jogo.push(9);
    }else if(a!=9 && b!=9 && a!=1 && b!=1){
        jogo.push(a);
    }else{
        if(jogo.size()>8){
            cout<<"oitavas";
        }else if(jogo.size()>4){
            cout<<"oitavas";
        } else if(jogo.size()>2){
            cout << "semifinal";
        }else{
            cout<< "final";
        }
    }


}