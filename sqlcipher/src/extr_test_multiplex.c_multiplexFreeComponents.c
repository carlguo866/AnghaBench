
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nReal; scalar_t__ aReal; } ;
typedef TYPE_1__ multiplexGroup ;


 int multiplexSubClose (TYPE_1__*,int,int ) ;
 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void multiplexFreeComponents(multiplexGroup *pGroup){
  int i;
  for(i=0; i<pGroup->nReal; i++){ multiplexSubClose(pGroup, i, 0); }
  sqlite3_free(pGroup->aReal);
  pGroup->aReal = 0;
  pGroup->nReal = 0;
}
