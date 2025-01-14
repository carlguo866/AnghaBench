
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int occupied (float*,int) ;

__attribute__((used)) static void propagate_liberty(float *board, int *lib, int *visited, int row, int col, int side)
{
    if (row < 0 || row > 18 || col < 0 || col > 18) return;
    int index = row*19 + col;
    if (occupied(board,index) != side) return;
    if (visited[index]) return;
    visited[index] = 1;
    lib[index] += 1;
    propagate_liberty(board, lib, visited, row+1, col, side);
    propagate_liberty(board, lib, visited, row-1, col, side);
    propagate_liberty(board, lib, visited, row, col+1, side);
    propagate_liberty(board, lib, visited, row, col-1, side);
}
