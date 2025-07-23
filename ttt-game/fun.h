#ifndef FUN_H
#define FUNC_H

#include<iostream>
using namespace std;

// tic-tac-toe playboard
extern char board[3][3];
extern int count;

// utilities
void init_board();
void print_board();
bool fill(int row, int col, char ox);
bool check_winner();

#endif