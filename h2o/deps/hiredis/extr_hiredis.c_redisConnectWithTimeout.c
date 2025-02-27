
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ redisContext ;


 int REDIS_BLOCK ;
 int redisContextConnectTcp (TYPE_1__*,char const*,int,struct timeval const*) ;
 TYPE_1__* redisContextInit () ;

redisContext *redisConnectWithTimeout(const char *ip, int port, const struct timeval tv) {
    redisContext *c;

    c = redisContextInit();
    if (c == ((void*)0))
        return ((void*)0);

    c->flags |= REDIS_BLOCK;
    redisContextConnectTcp(c,ip,port,&tv);
    return c;
}
