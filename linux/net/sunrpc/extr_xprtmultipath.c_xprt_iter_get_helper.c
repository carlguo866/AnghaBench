
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_iter {int dummy; } ;
struct rpc_xprt {int dummy; } ;


 struct rpc_xprt* xprt_get (struct rpc_xprt*) ;

__attribute__((used)) static
struct rpc_xprt *xprt_iter_get_helper(struct rpc_xprt_iter *xpi,
  struct rpc_xprt *(*fn)(struct rpc_xprt_iter *))
{
 struct rpc_xprt *ret;

 do {
  ret = fn(xpi);
  if (ret == ((void*)0))
   break;
  ret = xprt_get(ret);
 } while (ret == ((void*)0));
 return ret;
}
