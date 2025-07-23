#include<iostream>
#include "fun.h"
using namespace std;

int main() {
    init_board();

    int r=0, c=0;
    bool is_o=true;
    while(1) {
        cout << "(Player " << (is_o?'O':'X') << ") Enter a position: ";
        cin >> r >> c;
        cout << "= = = = = = = = = = = =\n";

        if(is_o) {
            is_o = fill(r,c,'O') ? false : true;
        } else {
            is_o = fill(r,c,'X') ? true : false;
        }

        print_board();
        cout << "= = = = = = = = = = = =\n";
        
        if(check_winner()) {
            if(!is_o) {
                // O wins
                cout << "Player O won!\n";
                break;
            } else {
                // X wins
                cout << " Player X won!\n";
                break;
            }
        }
        if(count == 9) {
            cout << "Tie.\n";
            break;
        }
    }
    return 0;
}