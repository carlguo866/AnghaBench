
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct msg {TYPE_2__* owner; TYPE_1__** frag_seq; int keys; scalar_t__ narg; struct msg* peer; } ;
typedef scalar_t__ rstatus_t ;
struct TYPE_4__ {int err; } ;
struct TYPE_3__ {struct msg* peer; } ;


 scalar_t__ NC_OK ;
 size_t array_n (int ) ;
 scalar_t__ msg_prepend_format (struct msg*,char*,scalar_t__) ;
 scalar_t__ redis_copy_bulk (struct msg*,struct msg*) ;

__attribute__((used)) static void
redis_post_coalesce_mget(struct msg *request)
{
    struct msg *response = request->peer;
    struct msg *sub_msg;
    rstatus_t status;
    uint32_t i;

    status = msg_prepend_format(response, "*%d\r\n", request->narg - 1);
    if (status != NC_OK) {




        response->owner->err = 1;
        return;
    }

    for (i = 0; i < array_n(request->keys); i++) {
        sub_msg = request->frag_seq[i]->peer;
        if (sub_msg == ((void*)0)) {
            response->owner->err = 1;
            return;
        }
        status = redis_copy_bulk(response, sub_msg);
        if (status != NC_OK) {
            response->owner->err = 1;
            return;
        }
    }
}
