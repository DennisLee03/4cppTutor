#include "fun.h"
char board[3][3];
int count;

void init_board() {
    count=0;
    for(int i=0; i<3; i++)
        for(int j=0; j<3; j++)
            board[i][j]=' ';
}

void print_board() {
    for(int i=0; i<3; i++) {
        for(int j=0; j<3; j++) {
            cout << " " << board[i][j] << " ";
            if(j==2) continue;
            cout << "|";
        }
        cout << "\n";
        if(i==2) continue;
        cout << "---|---|---\n";
    }
}

bool fill(int row, int col, char ox) {

    row -= 1;
    col -= 1;
    if(row > 2 || row < 0 || col > 2 || col < 0) {
        cout << "Invalid position to fill " << ox << ".\n";
        return false;
    }

    if(board[row][col] == ' ') {
       board[row][col] = ox;
       count++;
       return true;
    } else {
        cout << "This position has been occupied! Please choose another one.\n";
        return false;
    }
}

bool check_winner() {
    // 8 conditions
    if(board[0][0] != ' ' && board[0][0] == board[0][1] && board[0][1] == board[0][2]) {
        return true;
    }

    if(board[1][0] != ' ' && board[1][0] == board[1][1] && board[1][1] == board[1][2]) {
        return true;
    }

    if(board[2][0] != ' ' && board[2][0] == board[2][1] && board[2][1] == board[2][2]) {
        return true;
    }

    if(board[0][0] != ' ' && board[0][0] == board[1][0] && board[1][0] == board[2][0]) {
        return true;
    }

    if(board[0][1] != ' ' && board[0][1] == board[1][1] && board[1][1] == board[2][1]) {
        return true;
    }

    if(board[0][2] != ' ' && board[0][2] == board[1][2] && board[1][2] == board[2][2]) {
        return true;
    }

    if(board[0][0] != ' ' && board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
        return true;
    }

    if(board[0][2] != ' ' && board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
        return true;
    }

    return false;
}