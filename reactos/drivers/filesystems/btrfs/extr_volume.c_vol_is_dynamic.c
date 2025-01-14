
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ OutputBufferLength; } ;
struct TYPE_11__ {TYPE_1__ DeviceIoControl; } ;
struct TYPE_15__ {TYPE_2__ Parameters; } ;
struct TYPE_13__ {int Information; } ;
struct TYPE_12__ {scalar_t__ SystemBuffer; } ;
struct TYPE_14__ {TYPE_4__ IoStatus; TYPE_3__ AssociatedIrp; } ;
typedef TYPE_5__* PIRP ;
typedef TYPE_6__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;


 TYPE_6__* IoGetCurrentIrpStackLocation (TYPE_5__*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS vol_is_dynamic(PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    uint8_t* buf;

    if (IrpSp->Parameters.DeviceIoControl.OutputBufferLength == 0 || !Irp->AssociatedIrp.SystemBuffer)
        return STATUS_INVALID_PARAMETER;

    buf = (uint8_t*)Irp->AssociatedIrp.SystemBuffer;

    *buf = 1;

    Irp->IoStatus.Information = 1;

    return STATUS_SUCCESS;
}
