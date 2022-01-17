#include <iostream>

using namespace std;

int main()
{
    int s,n,x;
    x=0;s=0;
    cout << "Da numere:" << endl;
    do
{
    cin >> n;
    if (n>0){
            s++;
}
    x++;
} while ( x<10 );
    cout << "Numere pozitive sunt " << s << endl;
return 0;
}



