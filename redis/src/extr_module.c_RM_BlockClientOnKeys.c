
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleCtx ;
typedef int RedisModuleCmdFunc ;
typedef int RedisModuleBlockedClient ;


 int * moduleBlockClient (int *,int ,int ,void (*) (int *,void*),long long,int **,int,void*) ;

RedisModuleBlockedClient *RM_BlockClientOnKeys(RedisModuleCtx *ctx, RedisModuleCmdFunc reply_callback, RedisModuleCmdFunc timeout_callback, void (*free_privdata)(RedisModuleCtx*,void*), long long timeout_ms, RedisModuleString **keys, int numkeys, void *privdata) {
    return moduleBlockClient(ctx,reply_callback,timeout_callback,free_privdata,timeout_ms, keys,numkeys,privdata);
}
