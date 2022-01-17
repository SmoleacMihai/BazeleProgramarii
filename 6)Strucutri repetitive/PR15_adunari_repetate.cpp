#include <iostream>

using namespace std;

int main(){

   unsigned int n1, n2, i, res ;

    cout<<"Dati primul numar "; cin>>n1;
    cout<<"Dati aldoilea numar "; cin>>n2;
    res=0;
    for(int i=0; i < n1; i++){
        res=n2+res;
    }

    cout<<("Raspuns ", res);

    return 0;
}