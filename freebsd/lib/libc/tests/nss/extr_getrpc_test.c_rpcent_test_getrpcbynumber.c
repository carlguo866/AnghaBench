
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent_test_data {int dummy; } ;
struct rpcent {int r_number; } ;


 scalar_t__ compare_rpcent (struct rpcent*,struct rpcent*,int *) ;
 int dump_rpcent (struct rpcent*) ;
 struct rpcent* getrpcbynumber (int ) ;
 int printf (char*) ;
 scalar_t__ rpcent_check_ambiguity (struct rpcent_test_data*,struct rpcent*) ;
 scalar_t__ rpcent_test_correctness (struct rpcent*,int *) ;

__attribute__((used)) static int
rpcent_test_getrpcbynumber(struct rpcent *rpc_model, void *mdata)
{
 struct rpcent *rpc;

 printf("testing getrpcbyport() with the following data...\n");
 dump_rpcent(rpc_model);

 rpc = getrpcbynumber(rpc_model->r_number);
 if (rpcent_test_correctness(rpc, ((void*)0)) != 0 ||
     (compare_rpcent(rpc, rpc_model, ((void*)0)) != 0 &&
      rpcent_check_ambiguity((struct rpcent_test_data *)mdata, rpc)
     != 0)) {
  printf("not ok\n");
  return (-1);
 } else {
  printf("ok\n");
  return (0);
 }
}
