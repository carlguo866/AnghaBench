
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int * bind_local; int actual; TYPE_2__* current_remote; } ;
struct TYPE_11__ {TYPE_6__ link_socket_addr; } ;
struct TYPE_10__ {int resolve_in_advance; scalar_t__ persist_local_ip; scalar_t__ persist_remote_ip; scalar_t__ no_advance; } ;
struct TYPE_7__ {int * link_socket; scalar_t__ link_socket_owned; } ;
struct context {TYPE_5__ c1; TYPE_4__ options; TYPE_3__* sig; TYPE_1__ c2; } ;
struct TYPE_9__ {scalar_t__ signal_received; scalar_t__ source; } ;
struct TYPE_8__ {scalar_t__ ai_next; } ;


 int CLEAR (int ) ;
 scalar_t__ SIGUSR1 ;
 scalar_t__ SIG_SOURCE_HARD ;
 int clear_remote_addrlist (TYPE_6__*,int) ;
 int freeaddrinfo (int *) ;
 int link_socket_close (int *) ;

__attribute__((used)) static void
do_close_link_socket(struct context *c)
{
    if (c->c2.link_socket && c->c2.link_socket_owned)
    {
        link_socket_close(c->c2.link_socket);
        c->c2.link_socket = ((void*)0);
    }





    if (!(c->sig->signal_received == SIGUSR1
          && ( (c->options.persist_remote_ip)
               ||
               ( c->sig->source != SIG_SOURCE_HARD
                 && ((c->c1.link_socket_addr.current_remote && c->c1.link_socket_addr.current_remote->ai_next)
                     || c->options.no_advance))
               )))
    {
        clear_remote_addrlist(&c->c1.link_socket_addr, !c->options.resolve_in_advance);
    }


    if (!(c->sig->signal_received == SIGUSR1 && c->options.persist_remote_ip))
    {
        CLEAR(c->c1.link_socket_addr.actual);
    }

    if (!(c->sig->signal_received == SIGUSR1 && c->options.persist_local_ip))
    {
        if (c->c1.link_socket_addr.bind_local && !c->options.resolve_in_advance)
        {
            freeaddrinfo(c->c1.link_socket_addr.bind_local);
        }

        c->c1.link_socket_addr.bind_local = ((void*)0);
    }
}
