
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct specialix_port {int dummy; } ;
struct specialix_board {int dummy; } ;


 size_t SX_BOARD (struct specialix_port const*) ;
 struct specialix_board* sx_board ;
 int sx_port ;

__attribute__((used)) static inline struct specialix_board *port_Board(
     struct specialix_port const *port)
{
 return &sx_board[SX_BOARD(port - sx_port)];
}
