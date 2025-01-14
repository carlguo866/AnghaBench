
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG ;
struct TYPE_16__ {scalar_t__ QuadPart; } ;
struct TYPE_15__ {scalar_t__ QuadPart; } ;
struct TYPE_14__ {scalar_t__ QuadPart; } ;
struct TYPE_17__ {TYPE_6__ AllocationSize; TYPE_5__ ValidDataLength; TYPE_4__ FileSize; } ;
struct TYPE_12__ {scalar_t__ FileSize; } ;
struct TYPE_11__ {scalar_t__ FileSize; } ;
struct TYPE_13__ {TYPE_2__ Fat; TYPE_1__ FatX; } ;
struct TYPE_18__ {TYPE_7__ RFCB; TYPE_3__ entry; } ;
typedef TYPE_8__* PVFATFCB ;
typedef int PFILE_OBJECT ;
typedef int PCC_FILE_SIZES ;
typedef scalar_t__ LONGLONG ;
typedef scalar_t__ BOOLEAN ;


 int CcSetFileSizes (int ,int ) ;
 scalar_t__ ROUND_UP_64 (scalar_t__,scalar_t__) ;
 int vfatFCBIsDirectory (TYPE_8__*) ;

__attribute__((used)) static
VOID
UpdateFileSize(
    PFILE_OBJECT FileObject,
    PVFATFCB Fcb,
    ULONG Size,
    ULONG ClusterSize,
    BOOLEAN IsFatX)
{
    if (Size > 0)
    {
        Fcb->RFCB.AllocationSize.QuadPart = ROUND_UP_64(Size, ClusterSize);
    }
    else
    {
        Fcb->RFCB.AllocationSize.QuadPart = (LONGLONG)0;
    }
    if (!vfatFCBIsDirectory(Fcb))
    {
        if (IsFatX)
            Fcb->entry.FatX.FileSize = Size;
        else
            Fcb->entry.Fat.FileSize = Size;
    }
    Fcb->RFCB.FileSize.QuadPart = Size;
    Fcb->RFCB.ValidDataLength.QuadPart = Size;

    CcSetFileSizes(FileObject, (PCC_FILE_SIZES)&Fcb->RFCB.AllocationSize);
}
