
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct cache_detail {int dummy; } ;


 int sunrpc_cache_pipe_upcall (struct cache_detail*,struct cache_head*,int ) ;
 int unix_gid_request ;

__attribute__((used)) static int unix_gid_upcall(struct cache_detail *cd, struct cache_head *h)
{
 return sunrpc_cache_pipe_upcall(cd, h, unix_gid_request);
}
