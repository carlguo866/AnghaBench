
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_23__ {scalar_t__ Use; int DomainIndex; scalar_t__ Flags; int * Sid; } ;
struct TYPE_22__ {scalar_t__ Length; } ;
struct TYPE_21__ {scalar_t__* Element; int * member_1; int member_0; } ;
typedef TYPE_1__ SAMPR_ULONG_ARRAY ;
typedef int * SAMPR_HANDLE ;
typedef int * PULONG ;
typedef TYPE_2__* PRPC_UNICODE_STRING ;
typedef TYPE_3__* PLSAPR_TRANSLATED_SID_EX2 ;
typedef int PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef TYPE_2__* NTSTATUS ;
typedef size_t DWORD ;


 int BuiltinDomainName ;
 int BuiltinDomainSid ;
 int * CreateSidFromSidAndRid (int ,scalar_t__) ;
 int DOMAIN_LOOKUP ;
 TYPE_2__* LsapAddDomainToDomainsList (int ,int *,int ,size_t*) ;
 scalar_t__ NT_SUCCESS (TYPE_2__*) ;
 int SAM_SERVER_CONNECT ;
 int SAM_SERVER_LOOKUP_DOMAIN ;
 TYPE_2__* STATUS_INSUFFICIENT_RESOURCES ;
 TYPE_2__* STATUS_SUCCESS ;
 int SamIFree_SAMPR_ULONG_ARRAY (TYPE_1__*) ;
 int SamrCloseHandle (int **) ;
 TYPE_2__* SamrConnect (int *,int **,int) ;
 TYPE_2__* SamrLookupNamesInDomain (int *,int,TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 TYPE_2__* SamrOpenDomain (int *,int ,int ,int **) ;
 scalar_t__ SidTypeUnknown ;
 int TRACE (char*,TYPE_2__*) ;

__attribute__((used)) static
NTSTATUS
LsapLookupIsolatedBuiltinNames(DWORD Count,
                               PRPC_UNICODE_STRING DomainNames,
                               PRPC_UNICODE_STRING AccountNames,
                               PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer,
                               PLSAPR_TRANSLATED_SID_EX2 SidsBuffer,
                               PULONG Mapped)
{
    SAMPR_HANDLE ServerHandle = ((void*)0);
    SAMPR_HANDLE DomainHandle = ((void*)0);
    SAMPR_ULONG_ARRAY RelativeIds = {0, ((void*)0)};
    SAMPR_ULONG_ARRAY Use = {0, ((void*)0)};
    ULONG DomainIndex;
    ULONG i;
    NTSTATUS Status = STATUS_SUCCESS;

    Status = SamrConnect(((void*)0),
                         &ServerHandle,
                         SAM_SERVER_CONNECT | SAM_SERVER_LOOKUP_DOMAIN);
    if (!NT_SUCCESS(Status))
    {
        TRACE("SamrConnect failed (Status %08lx)\n", Status);
        goto done;
    }

    Status = SamrOpenDomain(ServerHandle,
                            DOMAIN_LOOKUP,
                            BuiltinDomainSid,
                            &DomainHandle);
    if (!NT_SUCCESS(Status))
    {
        TRACE("SamOpenDomain failed (Status %08lx)\n", Status);
        goto done;
    }

    for (i = 0; i < Count; i++)
    {

        if (SidsBuffer[i].Use != SidTypeUnknown)
            continue;


        if (DomainNames[i].Length != 0)
            continue;

        TRACE("Mapping name: %wZ\n", &AccountNames[i]);

        Status = SamrLookupNamesInDomain(DomainHandle,
                                         1,
                                         &AccountNames[i],
                                         &RelativeIds,
                                         &Use);
        if (NT_SUCCESS(Status))
        {
            TRACE("Found relative ID: %lu\n", RelativeIds.Element[0]);

            SidsBuffer[i].Use = Use.Element[0];
            SidsBuffer[i].Sid = CreateSidFromSidAndRid(BuiltinDomainSid,
                                                       RelativeIds.Element[0]);
            if (SidsBuffer[i].Sid == ((void*)0))
            {
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto done;
            }

            SidsBuffer[i].DomainIndex = -1;
            SidsBuffer[i].Flags = 0;

            Status = LsapAddDomainToDomainsList(DomainsBuffer,
                                                &BuiltinDomainName,
                                                BuiltinDomainSid,
                                                &DomainIndex);
            if (!NT_SUCCESS(Status))
                goto done;

            SidsBuffer[i].DomainIndex = DomainIndex;

            (*Mapped)++;
        }

        SamIFree_SAMPR_ULONG_ARRAY(&RelativeIds);
        SamIFree_SAMPR_ULONG_ARRAY(&Use);
    }

done:
    if (DomainHandle != ((void*)0))
        SamrCloseHandle(&DomainHandle);

    if (ServerHandle != ((void*)0))
        SamrCloseHandle(&ServerHandle);

    return Status;
}
