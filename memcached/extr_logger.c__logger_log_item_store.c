
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct logentry_item_store {int status; int cmd; int nkey; int sfd; int key; scalar_t__ ttl; int clsid; } ;
typedef scalar_t__ rel_time_t ;
struct TYPE_3__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ logentry ;
typedef enum store_item_type { ____Placeholder_store_item_type } store_item_type ;


 scalar_t__ current_time ;
 int memcpy (int ,char*,int const) ;

__attribute__((used)) static void _logger_log_item_store(logentry *e, const enum store_item_type status,
        const int comm, char *key, const int nkey, rel_time_t ttl, const uint8_t clsid, int sfd) {
    struct logentry_item_store *le = (struct logentry_item_store *) e->data;
    le->status = status;
    le->cmd = comm;
    le->nkey = nkey;
    le->clsid = clsid;
    if (ttl != 0) {
        le->ttl = ttl - current_time;
    } else {
        le->ttl = 0;
    }
    memcpy(le->key, key, nkey);
    le->sfd = sfd;
    e->size = sizeof(struct logentry_item_store) + nkey;
}
