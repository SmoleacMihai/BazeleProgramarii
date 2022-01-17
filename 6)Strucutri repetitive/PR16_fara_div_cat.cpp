#include <iostream>

using namespace std;

int main()
{
unsigned int n1, res, n2;
cout<<"Dati impartitorul ";
    cin>>n1;
    cout<<"Dati deimpartitul ";
    cin>>n2;
    res=0;
while (n1>=n2) {
                n1=n1-n2;
                res++;
                }
    cout<<"Catul impartirii ";
    cout << res;
return 0;
}