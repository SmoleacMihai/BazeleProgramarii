#include <iostream>
#include <string>

using namespace std;

/*Să seelaboreze algoritmul deintroducere a 3 numere naturale
n, p şi k, apoi introducerea unui şir de n numere naturale şi
determinarea câte din acestea, împărţitela p dau restul k.*/

int main() {
    unsigned int n, p, k, count, nr;
    
    cout << "p = "; cin>>p;
    cout << "n = "; cin>>n;
    cout << "k = "; cin>>k;
    

    count=0;
    for (int i=0; i<n; i++) {
    cout<<"nr="; cin>>nr;
    if (nr % p == k){
    count++;}
    }

    cout<<"Raspunsul este ";cout<<count;
    

    return 0;
}