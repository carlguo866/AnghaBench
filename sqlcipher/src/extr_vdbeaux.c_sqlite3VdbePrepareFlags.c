
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int prepFlags; } ;
typedef TYPE_1__ Vdbe ;



u8 sqlite3VdbePrepareFlags(Vdbe *v){
  return v->prepFlags;
}
