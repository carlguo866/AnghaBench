
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct event_base {int dummy; } ;
struct TYPE_7__ {char* errstr; scalar_t__ err; } ;
typedef TYPE_1__ redisAsyncContext ;


 int SIGPIPE ;
 int SIG_IGN ;
 int connectCallback ;
 int disconnectCallback ;
 int event_base_dispatch (struct event_base*) ;
 struct event_base* event_base_new () ;
 int getCallback ;
 int printf (char*,char*) ;
 int redisAsyncCommand (TYPE_1__*,int ,char*,char*,...) ;
 TYPE_1__* redisAsyncConnect (char*,int) ;
 int redisAsyncSetConnectCallback (TYPE_1__*,int ) ;
 int redisAsyncSetDisconnectCallback (TYPE_1__*,int ) ;
 int redisLibeventAttach (TYPE_1__*,struct event_base*) ;
 int signal (int ,int ) ;
 int strlen (char*) ;

int main (int argc, char **argv) {
    signal(SIGPIPE, SIG_IGN);
    struct event_base *base = event_base_new();

    redisAsyncContext *c = redisAsyncConnect("127.0.0.1", 6379);
    if (c->err) {

        printf("Error: %s\n", c->errstr);
        return 1;
    }

    redisLibeventAttach(c,base);
    redisAsyncSetConnectCallback(c,connectCallback);
    redisAsyncSetDisconnectCallback(c,disconnectCallback);
    redisAsyncCommand(c, ((void*)0), ((void*)0), "SET key %b", argv[argc-1], strlen(argv[argc-1]));
    redisAsyncCommand(c, getCallback, (char*)"end-1", "GET key");
    event_base_dispatch(base);
    return 0;
}
