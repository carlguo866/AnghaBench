
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_8__ {int recovered; int is_metadata; int parity; int list_entry; int data; int metadata; void* device; void* address; } ;
typedef TYPE_2__ scrub_error ;
struct TYPE_7__ {int stats_lock; int errors; int num_errors; } ;
struct TYPE_9__ {TYPE_1__ scrub; } ;
typedef TYPE_3__ device_extension ;


 int ALLOC_TAG ;
 int ERR (char*,...) ;
 int ExAcquireResourceExclusiveLite (int *,int) ;
 TYPE_2__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExReleaseResourceLite (int *) ;
 int InsertTailList (int *,int *) ;
 int PagedPool ;
 int RtlZeroMemory (int *,int) ;
 int log_unrecoverable_error (TYPE_3__*,void*,void*) ;

__attribute__((used)) static void log_error(device_extension* Vcb, uint64_t addr, uint64_t devid, bool metadata, bool recoverable, bool parity) {
    if (recoverable) {
        scrub_error* err;

        if (parity) {
            ERR("recovering from parity error at %I64x on device %I64x\n", addr, devid);
        } else {
            if (metadata)
                ERR("recovering from metadata checksum error at %I64x on device %I64x\n", addr, devid);
            else
                ERR("recovering from data checksum error at %I64x on device %I64x\n", addr, devid);
        }

        err = ExAllocatePoolWithTag(PagedPool, sizeof(scrub_error), ALLOC_TAG);
        if (!err) {
            ERR("out of memory\n");
            return;
        }

        err->address = addr;
        err->device = devid;
        err->recovered = 1;
        err->is_metadata = metadata;
        err->parity = parity;

        if (metadata)
            RtlZeroMemory(&err->metadata, sizeof(err->metadata));
        else
            RtlZeroMemory(&err->data, sizeof(err->data));

        ExAcquireResourceExclusiveLite(&Vcb->scrub.stats_lock, 1);

        Vcb->scrub.num_errors++;
        InsertTailList(&Vcb->scrub.errors, &err->list_entry);

        ExReleaseResourceLite(&Vcb->scrub.stats_lock);
    } else {
        if (metadata)
            ERR("unrecoverable metadata checksum error at %I64x\n", addr);
        else
            ERR("unrecoverable data checksum error at %I64x\n", addr);

        log_unrecoverable_error(Vcb, addr, devid);
    }
}
