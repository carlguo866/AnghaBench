
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* cfg; TYPE_5__* files; } ;
typedef TYPE_4__ lfs1_t ;
struct TYPE_12__ {int buffer; } ;
struct TYPE_14__ {TYPE_3__ cache; TYPE_1__* cfg; struct TYPE_14__* next; } ;
typedef TYPE_5__ lfs1_file_t ;
struct TYPE_11__ {int file_buffer; } ;
struct TYPE_10__ {scalar_t__ buffer; } ;


 int lfs1_file_sync (TYPE_4__*,TYPE_5__*) ;
 int lfs1_free (int ) ;

int lfs1_file_close(lfs1_t *lfs1, lfs1_file_t *file) {
    int err = lfs1_file_sync(lfs1, file);


    for (lfs1_file_t **p = &lfs1->files; *p; p = &(*p)->next) {
        if (*p == file) {
            *p = file->next;
            break;
        }
    }


    if (!(file->cfg && file->cfg->buffer) && !lfs1->cfg->file_buffer) {
        lfs1_free(file->cache.buffer);
    }

    return err;
}
