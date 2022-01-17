#include <iostream>

using namespace std;

int main()
{
    unsigned x,s;
    s=0; x=0;

    cout << "Introduceti numere naturale, daca introduceti 0 se va incheia programul" << endl;
    do
    {
        cin >>x;
        if (x>=10 && x<=99)
        {
            s++;
        }
    }while(x!=0);

    cout << "Numere cu doua cifre sunt " << s << endl;


    return 0;
}
