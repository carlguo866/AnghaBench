
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_4__ {TYPE_1__* pOrigVfs; } ;
struct TYPE_3__ {int (* xFullPathname ) (TYPE_1__*,char const*,int,char*) ;} ;


 TYPE_2__ gMultiplex ;
 int stub1 (TYPE_1__*,char const*,int,char*) ;

__attribute__((used)) static int multiplexFullPathname(sqlite3_vfs *a, const char *b, int c, char *d){
  return gMultiplex.pOrigVfs->xFullPathname(gMultiplex.pOrigVfs, b, c, d);
}
