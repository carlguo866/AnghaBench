
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pBtree; } ;
typedef TYPE_1__ BtCursor ;


 int sqlite3BtreeEnter (int ) ;

void sqlite3BtreeEnterCursor(BtCursor *pCur){
  sqlite3BtreeEnter(pCur->pBtree);
}
