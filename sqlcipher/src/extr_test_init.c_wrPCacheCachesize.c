
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_pcache ;
struct TYPE_3__ {int (* xCachesize ) (int *,int) ;} ;
struct TYPE_4__ {TYPE_1__ pcache; } ;


 int stub1 (int *,int) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static void wrPCacheCachesize(sqlite3_pcache *p, int n){
  wrapped.pcache.xCachesize(p, n);
}
