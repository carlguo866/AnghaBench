
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int relationship ;
struct TYPE_23__ {int ActiveGroupCount; TYPE_7__* GroupInfo; int MaximumGroupCount; } ;
struct TYPE_20__ {int Group; int Mask; } ;
struct TYPE_21__ {TYPE_5__ GroupMask; int Type; int CacheSize; int LineSize; int Associativity; int Level; } ;
struct TYPE_18__ {int Group; int Mask; } ;
struct TYPE_19__ {TYPE_3__ GroupMask; int NodeNumber; } ;
struct TYPE_17__ {int GroupCount; TYPE_1__* GroupMask; int EfficiencyClass; int Flags; } ;
struct TYPE_24__ {int Relationship; scalar_t__ Size; TYPE_8__ Group; TYPE_6__ Cache; TYPE_4__ NumaNode; TYPE_2__ Processor; } ;
struct TYPE_22__ {int ActiveProcessorMask; int ActiveProcessorCount; int MaximumProcessorCount; } ;
struct TYPE_16__ {int Group; int Mask; } ;
typedef TYPE_9__ SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_9__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_9__*) ;
 scalar_t__ RelationAll ;





 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;
 scalar_t__ STATUS_SUCCESS ;
 int SystemLogicalProcessorInformationEx ;
 int memcmp (TYPE_9__*,TYPE_9__*,scalar_t__) ;
 int ok (int,char*,...) ;
 int pGetLogicalProcessorInformationEx (scalar_t__,TYPE_9__*,scalar_t__*) ;
 scalar_t__ pNtQuerySystemInformationEx (int ,scalar_t__*,int,TYPE_9__*,scalar_t__,scalar_t__*) ;
 int trace (char*,int,int,...) ;

__attribute__((used)) static void test_query_logicalprocex(void)
{
    SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX *infoex, *infoex2;
    DWORD relationship, len2, len;
    NTSTATUS status;
    BOOL ret;

    if (!pNtQuerySystemInformationEx)
        return;

    len = 0;
    relationship = 129;
    status = pNtQuerySystemInformationEx(SystemLogicalProcessorInformationEx, &relationship, sizeof(relationship), ((void*)0), 0, &len);
    ok(status == STATUS_INFO_LENGTH_MISMATCH, "got 0x%08x\n", status);
    ok(len > 0, "got %u\n", len);

    len = 0;
    relationship = RelationAll;
    status = pNtQuerySystemInformationEx(SystemLogicalProcessorInformationEx, &relationship, sizeof(relationship), ((void*)0), 0, &len);
    ok(status == STATUS_INFO_LENGTH_MISMATCH, "got 0x%08x\n", status);
    ok(len > 0, "got %u\n", len);

    len2 = 0;
    ret = pGetLogicalProcessorInformationEx(RelationAll, ((void*)0), &len2);
    ok(!ret && GetLastError() == ERROR_INSUFFICIENT_BUFFER, "got %d, error %d\n", ret, GetLastError());
    ok(len == len2, "got %u, expected %u\n", len2, len);

    if (len && len == len2) {
        int j, i;

        infoex = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, len);
        infoex2 = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, len);

        status = pNtQuerySystemInformationEx(SystemLogicalProcessorInformationEx, &relationship, sizeof(relationship), infoex, len, &len);
        ok(status == STATUS_SUCCESS, "got 0x%08x\n", status);

        ret = pGetLogicalProcessorInformationEx(RelationAll, infoex2, &len2);
        ok(ret, "got %d, error %d\n", ret, GetLastError());
        ok(!memcmp(infoex, infoex2, len), "returned info data mismatch\n");

        for(i = 0; status == STATUS_SUCCESS && i < len; ){
            SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX *ex = (void*)(((char *)infoex) + i);

            ok(ex->Relationship >= 129 && ex->Relationship <= 131,
                    "Got invalid relationship value: 0x%x\n", ex->Relationship);
            if (!ex->Size)
            {
                ok(0, "got infoex[%u].Size=0\n", i);
                break;
            }

            trace("infoex[%u].Size: %u\n", i, ex->Size);
            switch(ex->Relationship){
            case 129:
            case 128:
                trace("infoex[%u].Relationship: 0x%x (Core == 0x0 or Package == 0x3)\n", i, ex->Relationship);
                trace("infoex[%u].Processor.Flags: 0x%x\n", i, ex->Processor.Flags);

                trace("infoex[%u].Processor.EfficiencyClass: 0x%x\n", i, ex->Processor.EfficiencyClass);

                trace("infoex[%u].Processor.GroupCount: 0x%x\n", i, ex->Processor.GroupCount);
                for(j = 0; j < ex->Processor.GroupCount; ++j){
                    trace("infoex[%u].Processor.GroupMask[%u].Mask: 0x%lx\n", i, j, ex->Processor.GroupMask[j].Mask);
                    trace("infoex[%u].Processor.GroupMask[%u].Group: 0x%x\n", i, j, ex->Processor.GroupMask[j].Group);
                }
                break;
            case 130:
                trace("infoex[%u].Relationship: 0x%x (NumaNode)\n", i, ex->Relationship);
                trace("infoex[%u].NumaNode.NodeNumber: 0x%x\n", i, ex->NumaNode.NodeNumber);
                trace("infoex[%u].NumaNode.GroupMask.Mask: 0x%lx\n", i, ex->NumaNode.GroupMask.Mask);
                trace("infoex[%u].NumaNode.GroupMask.Group: 0x%x\n", i, ex->NumaNode.GroupMask.Group);
                break;
            case 132:
                trace("infoex[%u].Relationship: 0x%x (Cache)\n", i, ex->Relationship);
                trace("infoex[%u].Cache.Level: 0x%x\n", i, ex->Cache.Level);
                trace("infoex[%u].Cache.Associativity: 0x%x\n", i, ex->Cache.Associativity);
                trace("infoex[%u].Cache.LineSize: 0x%x\n", i, ex->Cache.LineSize);
                trace("infoex[%u].Cache.CacheSize: 0x%x\n", i, ex->Cache.CacheSize);
                trace("infoex[%u].Cache.Type: 0x%x\n", i, ex->Cache.Type);
                trace("infoex[%u].Cache.GroupMask.Mask: 0x%lx\n", i, ex->Cache.GroupMask.Mask);
                trace("infoex[%u].Cache.GroupMask.Group: 0x%x\n", i, ex->Cache.GroupMask.Group);
                break;
            case 131:
                trace("infoex[%u].Relationship: 0x%x (Group)\n", i, ex->Relationship);
                trace("infoex[%u].Group.MaximumGroupCount: 0x%x\n", i, ex->Group.MaximumGroupCount);
                trace("infoex[%u].Group.ActiveGroupCount: 0x%x\n", i, ex->Group.ActiveGroupCount);
                for(j = 0; j < ex->Group.ActiveGroupCount; ++j){
                    trace("infoex[%u].Group.GroupInfo[%u].MaximumProcessorCount: 0x%x\n", i, j, ex->Group.GroupInfo[j].MaximumProcessorCount);
                    trace("infoex[%u].Group.GroupInfo[%u].ActiveProcessorCount: 0x%x\n", i, j, ex->Group.GroupInfo[j].ActiveProcessorCount);
                    trace("infoex[%u].Group.GroupInfo[%u].ActiveProcessorMask: 0x%lx\n", i, j, ex->Group.GroupInfo[j].ActiveProcessorMask);
                }
                break;
            default:
                break;
            }

            i += ex->Size;
        }

        HeapFree(GetProcessHeap(), 0, infoex);
        HeapFree(GetProcessHeap(), 0, infoex2);
    }
}
