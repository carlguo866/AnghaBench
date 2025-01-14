
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_15__ {int Length; } ;
struct TYPE_14__ {scalar_t__ Length; int MaximumLength; scalar_t__* Buffer; } ;
struct TYPE_13__ {TYPE_9__ PathNameU; } ;
typedef scalar_t__* PWCHAR ;
typedef TYPE_1__* PVFATFCB ;
typedef TYPE_2__* PUNICODE_STRING ;
typedef int NTSTATUS ;


 scalar_t__* ExAllocatePoolWithTag (int ,int,int ) ;
 int LONGNAME_MAX_LENGTH ;
 int NonPagedPool ;
 int RtlAppendUnicodeStringToString (TYPE_2__*,TYPE_2__*) ;
 int RtlAppendUnicodeToString (TYPE_2__*,char*) ;
 int RtlCopyUnicodeString (TYPE_2__*,TYPE_9__*) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_OBJECT_NAME_INVALID ;
 int STATUS_SUCCESS ;
 int TAG_FCB ;
 int max (scalar_t__,scalar_t__) ;
 int vfatFCBIsRoot (TYPE_1__*) ;

__attribute__((used)) static
NTSTATUS
vfatMakeFullName(
    PVFATFCB directoryFCB,
    PUNICODE_STRING LongNameU,
    PUNICODE_STRING ShortNameU,
    PUNICODE_STRING NameU)
{
    PWCHAR PathNameBuffer;
    USHORT PathNameLength;

    PathNameLength = directoryFCB->PathNameU.Length + max(LongNameU->Length, ShortNameU->Length);
    if (!vfatFCBIsRoot(directoryFCB))
    {
        PathNameLength += sizeof(WCHAR);
    }

    if (PathNameLength > LONGNAME_MAX_LENGTH * sizeof(WCHAR))
    {
        return STATUS_OBJECT_NAME_INVALID;
    }
    PathNameBuffer = ExAllocatePoolWithTag(NonPagedPool, PathNameLength + sizeof(WCHAR), TAG_FCB);
    if (!PathNameBuffer)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    NameU->Buffer = PathNameBuffer;
    NameU->Length = 0;
    NameU->MaximumLength = PathNameLength;

    RtlCopyUnicodeString(NameU, &directoryFCB->PathNameU);
    if (!vfatFCBIsRoot(directoryFCB))
    {
        RtlAppendUnicodeToString(NameU, L"\\");
    }
    if (LongNameU->Length > 0)
    {
        RtlAppendUnicodeStringToString(NameU, LongNameU);
    }
    else
    {
        RtlAppendUnicodeStringToString(NameU, ShortNameU);
    }
    NameU->Buffer[NameU->Length / sizeof(WCHAR)] = 0;

    return STATUS_SUCCESS;
}
