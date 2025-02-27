
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_5__ {int data; int (* loader ) (int ) ;} ;
typedef TYPE_2__ ngx_path_t ;
typedef int ngx_event_t ;
struct TYPE_4__ {size_t nelts; TYPE_2__** elts; } ;
struct TYPE_6__ {TYPE_1__ paths; } ;
typedef TYPE_3__ ngx_cycle_t ;


 int exit (int ) ;
 scalar_t__ ngx_cycle ;
 scalar_t__ ngx_quit ;
 scalar_t__ ngx_terminate ;
 int ngx_time_update () ;
 int stub1 (int ) ;

__attribute__((used)) static void
ngx_cache_loader_process_handler(ngx_event_t *ev)
{
    ngx_uint_t i;
    ngx_path_t **path;
    ngx_cycle_t *cycle;

    cycle = (ngx_cycle_t *) ngx_cycle;

    path = cycle->paths.elts;
    for (i = 0; i < cycle->paths.nelts; i++) {

        if (ngx_terminate || ngx_quit) {
            break;
        }

        if (path[i]->loader) {
            path[i]->loader(path[i]->data);
            ngx_time_update();
        }
    }

    exit(0);
}
