
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_9__ ;
typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_16__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


typedef scalar_t__ ULONG ;
struct TYPE_33__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_41__ {TYPE_1__ u; int LowPart; int HighPart; } ;
struct TYPE_36__ {scalar_t__ FileSize; unsigned short FirstCluster; scalar_t__ FirstClusterHigh; } ;
struct TYPE_34__ {scalar_t__ FileSize; scalar_t__ FirstCluster; } ;
struct TYPE_32__ {TYPE_4__ Fat; TYPE_2__ FatX; } ;
struct TYPE_37__ {scalar_t__ LowPart; } ;
struct TYPE_38__ {TYPE_5__ u; } ;
struct TYPE_39__ {TYPE_6__ AllocationSize; } ;
struct TYPE_40__ {scalar_t__ LastCluster; scalar_t__ LastOffset; int Flags; TYPE_16__ entry; TYPE_7__ RFCB; int PathNameU; } ;
struct TYPE_35__ {scalar_t__ BytesPerCluster; scalar_t__ FatType; } ;
struct TYPE_31__ {TYPE_3__ FatInfo; } ;
struct TYPE_30__ {int SectionObjectPointer; } ;
typedef TYPE_8__* PVFATFCB ;
typedef TYPE_9__* PLARGE_INTEGER ;
typedef TYPE_10__* PFILE_OBJECT ;
typedef TYPE_11__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (int) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*,int ) ;
 scalar_t__ FALSE ;
 scalar_t__ FAT32 ;
 int FAT32UpdateFreeClustersCount (TYPE_11__*) ;
 int FCB_IS_DIRTY ;
 int FILE_ACTION_MODIFIED ;
 int FILE_NOTIFY_CHANGE_SIZE ;
 int MmCanFileBeTruncated (int ,TYPE_9__*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NextCluster (TYPE_11__*,scalar_t__,scalar_t__*,scalar_t__) ;
 int OffsetToCluster (TYPE_11__*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__) ;
 scalar_t__ ROUND_DOWN (scalar_t__,scalar_t__) ;
 int STATUS_DISK_FULL ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int STATUS_USER_MAPPED_FILE ;
 scalar_t__ TRUE ;
 int UpdateFileSize (TYPE_10__*,TYPE_8__*,scalar_t__,scalar_t__,scalar_t__) ;
 int VfatUpdateEntry (TYPE_11__*,TYPE_8__*) ;
 int WriteCluster (TYPE_11__*,scalar_t__,int) ;
 scalar_t__ vfatDirEntryGetFirstCluster (TYPE_11__*,TYPE_16__*) ;
 int vfatReportChange (TYPE_11__*,TYPE_8__*,int ,int ) ;
 scalar_t__ vfatVolumeIsFatX (TYPE_11__*) ;

NTSTATUS
VfatSetAllocationSizeInformation(
    PFILE_OBJECT FileObject,
    PVFATFCB Fcb,
    PDEVICE_EXTENSION DeviceExt,
    PLARGE_INTEGER AllocationSize)
{
    ULONG OldSize;
    ULONG Cluster, FirstCluster;
    NTSTATUS Status;

    ULONG ClusterSize = DeviceExt->FatInfo.BytesPerCluster;
    ULONG NewSize = AllocationSize->u.LowPart;
    ULONG NCluster;
    BOOLEAN AllocSizeChanged = FALSE, IsFatX = vfatVolumeIsFatX(DeviceExt);

    DPRINT("VfatSetAllocationSizeInformation(File <%wZ>, AllocationSize %d %u)\n",
           &Fcb->PathNameU, AllocationSize->HighPart, AllocationSize->LowPart);

    if (IsFatX)
        OldSize = Fcb->entry.FatX.FileSize;
    else
        OldSize = Fcb->entry.Fat.FileSize;

    if (AllocationSize->u.HighPart > 0)
    {
        return STATUS_INVALID_PARAMETER;
    }

    if (OldSize == NewSize)
    {
        return STATUS_SUCCESS;
    }

    FirstCluster = vfatDirEntryGetFirstCluster(DeviceExt, &Fcb->entry);

    if (NewSize > Fcb->RFCB.AllocationSize.u.LowPart)
    {
        AllocSizeChanged = TRUE;
        if (FirstCluster == 0)
        {
            Fcb->LastCluster = Fcb->LastOffset = 0;
            Status = NextCluster(DeviceExt, FirstCluster, &FirstCluster, TRUE);
            if (!NT_SUCCESS(Status))
            {
                DPRINT1("NextCluster failed. Status = %x\n", Status);
                return Status;
            }

            if (FirstCluster == 0xffffffff)
            {
                return STATUS_DISK_FULL;
            }

            Status = OffsetToCluster(DeviceExt, FirstCluster,
                                     ROUND_DOWN(NewSize - 1, ClusterSize),
                                     &NCluster, TRUE);
            if (NCluster == 0xffffffff || !NT_SUCCESS(Status))
            {

                NCluster = Cluster = FirstCluster;
                Status = STATUS_SUCCESS;
                while (NT_SUCCESS(Status) && Cluster != 0xffffffff && Cluster > 1)
                {
                    Status = NextCluster(DeviceExt, FirstCluster, &NCluster, FALSE);
                    WriteCluster(DeviceExt, Cluster, 0);
                    Cluster = NCluster;
                }
                return STATUS_DISK_FULL;
            }

            if (IsFatX)
            {
                Fcb->entry.FatX.FirstCluster = FirstCluster;
            }
            else
            {
                if (DeviceExt->FatInfo.FatType == FAT32)
                {
                    Fcb->entry.Fat.FirstCluster = (unsigned short)(FirstCluster & 0x0000FFFF);
                    Fcb->entry.Fat.FirstClusterHigh = FirstCluster >> 16;
                }
                else
                {
                    ASSERT((FirstCluster >> 16) == 0);
                    Fcb->entry.Fat.FirstCluster = (unsigned short)(FirstCluster & 0x0000FFFF);
                }
            }
        }
        else
        {
            if (Fcb->LastCluster > 0)
            {
                if (Fcb->RFCB.AllocationSize.u.LowPart - ClusterSize == Fcb->LastOffset)
                {
                    Cluster = Fcb->LastCluster;
                    Status = STATUS_SUCCESS;
                }
                else
                {
                    Status = OffsetToCluster(DeviceExt, Fcb->LastCluster,
                                             Fcb->RFCB.AllocationSize.u.LowPart - ClusterSize - Fcb->LastOffset,
                                             &Cluster, FALSE);
                }
            }
            else
            {
                Status = OffsetToCluster(DeviceExt, FirstCluster,
                                         Fcb->RFCB.AllocationSize.u.LowPart - ClusterSize,
                                         &Cluster, FALSE);
            }

            if (!NT_SUCCESS(Status))
            {
                return Status;
            }

            Fcb->LastCluster = Cluster;
            Fcb->LastOffset = Fcb->RFCB.AllocationSize.u.LowPart - ClusterSize;



            Status = OffsetToCluster(DeviceExt, Cluster,
                                     ROUND_DOWN(NewSize - 1, ClusterSize) - Fcb->LastOffset,
                                     &NCluster, TRUE);
            if (NCluster == 0xffffffff || !NT_SUCCESS(Status))
            {

                NCluster = Cluster;
                Status = NextCluster(DeviceExt, FirstCluster, &NCluster, FALSE);
                WriteCluster(DeviceExt, Cluster, 0xffffffff);
                Cluster = NCluster;
                while (NT_SUCCESS(Status) && Cluster != 0xffffffff && Cluster > 1)
                {
                    Status = NextCluster(DeviceExt, FirstCluster, &NCluster, FALSE);
                    WriteCluster(DeviceExt, Cluster, 0);
                    Cluster = NCluster;
                }
                return STATUS_DISK_FULL;
            }
        }
        UpdateFileSize(FileObject, Fcb, NewSize, ClusterSize, vfatVolumeIsFatX(DeviceExt));
    }
    else if (NewSize + ClusterSize <= Fcb->RFCB.AllocationSize.u.LowPart)
    {
        DPRINT("Check for the ability to set file size\n");
        if (!MmCanFileBeTruncated(FileObject->SectionObjectPointer,
                                  (PLARGE_INTEGER)AllocationSize))
        {
            DPRINT("Couldn't set file size!\n");
            return STATUS_USER_MAPPED_FILE;
        }
        DPRINT("Can set file size\n");

        AllocSizeChanged = TRUE;

        Fcb->LastCluster = Fcb->LastOffset = 0;
        UpdateFileSize(FileObject, Fcb, NewSize, ClusterSize, vfatVolumeIsFatX(DeviceExt));
        if (NewSize > 0)
        {
            Status = OffsetToCluster(DeviceExt, FirstCluster,
                                     ROUND_DOWN(NewSize - 1, ClusterSize),
                                     &Cluster, FALSE);

            NCluster = Cluster;
            Status = NextCluster(DeviceExt, FirstCluster, &NCluster, FALSE);
            WriteCluster(DeviceExt, Cluster, 0xffffffff);
            Cluster = NCluster;
        }
        else
        {
            if (IsFatX)
            {
                Fcb->entry.FatX.FirstCluster = 0;
            }
            else
            {
                if (DeviceExt->FatInfo.FatType == FAT32)
                {
                    Fcb->entry.Fat.FirstCluster = 0;
                    Fcb->entry.Fat.FirstClusterHigh = 0;
                }
                else
                {
                    Fcb->entry.Fat.FirstCluster = 0;
                }
            }

            NCluster = Cluster = FirstCluster;
            Status = STATUS_SUCCESS;
        }

        while (NT_SUCCESS(Status) && 0xffffffff != Cluster && Cluster > 1)
        {
            Status = NextCluster(DeviceExt, FirstCluster, &NCluster, FALSE);
            WriteCluster(DeviceExt, Cluster, 0);
            Cluster = NCluster;
        }

        if (DeviceExt->FatInfo.FatType == FAT32)
        {
            FAT32UpdateFreeClustersCount(DeviceExt);
        }
    }
    else
    {
        UpdateFileSize(FileObject, Fcb, NewSize, ClusterSize, vfatVolumeIsFatX(DeviceExt));
    }


    Fcb->Flags |= FCB_IS_DIRTY;
    if (AllocSizeChanged)
    {
        VfatUpdateEntry(DeviceExt, Fcb);

        vfatReportChange(DeviceExt, Fcb, FILE_NOTIFY_CHANGE_SIZE, FILE_ACTION_MODIFIED);
    }
    return STATUS_SUCCESS;
}
