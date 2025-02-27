
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ (* end_select ) (void*) ;} ;
struct TYPE_7__ {TYPE_1__ vfs; } ;
typedef TYPE_2__ vfs_entry_t ;
struct TYPE_8__ {scalar_t__ isset; } ;
typedef TYPE_3__ fds_triple_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGD (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int esp_err_to_name (scalar_t__) ;
 TYPE_2__* get_vfs_for_index (int) ;
 scalar_t__ stub1 (void*) ;

__attribute__((used)) static void call_end_selects(int end_index, const fds_triple_t *vfs_fds_triple, void **driver_args)
{
    for (int i = 0; i < end_index; ++i) {
        const vfs_entry_t *vfs = get_vfs_for_index(i);
        const fds_triple_t *item = &vfs_fds_triple[i];
        if (vfs && vfs->vfs.end_select && item->isset) {
            esp_err_t err = vfs->vfs.end_select(driver_args[i]);
            if (err != ESP_OK) {
                ESP_LOGD(TAG, "end_select failed: %s", esp_err_to_name(err));
            }
        }
    }
}
