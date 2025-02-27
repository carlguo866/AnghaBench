
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pollfd {int events; int fd; } ;
struct TYPE_6__ {int fd; } ;
typedef TYPE_1__ redisContext ;


 scalar_t__ EINPROGRESS ;
 scalar_t__ ETIMEDOUT ;
 int POLLOUT ;
 int REDIS_ERR ;
 int REDIS_ERR_IO ;
 scalar_t__ REDIS_OK ;
 int __redisSetErrorFromErrno (TYPE_1__*,int ,char*) ;
 scalar_t__ errno ;
 int poll (struct pollfd*,int,long) ;
 scalar_t__ redisCheckSocketError (TYPE_1__*) ;
 int redisContextCloseFd (TYPE_1__*) ;

__attribute__((used)) static int redisContextWaitReady(redisContext *c, long msec) {
    struct pollfd wfd[1];

    wfd[0].fd = c->fd;
    wfd[0].events = POLLOUT;

    if (errno == EINPROGRESS) {
        int res;

        if ((res = poll(wfd, 1, msec)) == -1) {
            __redisSetErrorFromErrno(c, REDIS_ERR_IO, "poll(2)");
            redisContextCloseFd(c);
            return REDIS_ERR;
        } else if (res == 0) {
            errno = ETIMEDOUT;
            __redisSetErrorFromErrno(c,REDIS_ERR_IO,((void*)0));
            redisContextCloseFd(c);
            return REDIS_ERR;
        }

        if (redisCheckSocketError(c) != REDIS_OK)
            return REDIS_ERR;

        return REDIS_OK;
    }

    __redisSetErrorFromErrno(c,REDIS_ERR_IO,((void*)0));
    redisContextCloseFd(c);
    return REDIS_ERR;
}
