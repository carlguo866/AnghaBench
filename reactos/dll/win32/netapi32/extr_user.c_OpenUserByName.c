
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SAM_HANDLE ;
typedef int PUNICODE_STRING ;
typedef scalar_t__* PULONG ;
typedef scalar_t__* PSID_NAME_USE ;
typedef int PSAM_HANDLE ;
typedef int NTSTATUS ;
typedef int NET_API_STATUS ;


 int ERR (char*,...) ;
 int NERR_GroupNotFound ;
 int NERR_Success ;
 int NT_SUCCESS (int ) ;
 int NetpNtStatusToApiStatus (int ) ;
 int STATUS_SUCCESS ;
 int SamFreeMemory (scalar_t__*) ;
 int SamLookupNamesInDomain (int ,int,int ,scalar_t__**,scalar_t__**) ;
 int SamOpenUser (int ,int ,scalar_t__,int ) ;
 scalar_t__ SidTypeUser ;

__attribute__((used)) static
NET_API_STATUS
OpenUserByName(SAM_HANDLE DomainHandle,
               PUNICODE_STRING UserName,
               ULONG DesiredAccess,
               PSAM_HANDLE UserHandle)
{
    PULONG RelativeIds = ((void*)0);
    PSID_NAME_USE Use = ((void*)0);
    NET_API_STATUS ApiStatus = NERR_Success;
    NTSTATUS Status = STATUS_SUCCESS;


    Status = SamLookupNamesInDomain(DomainHandle,
                                    1,
                                    UserName,
                                    &RelativeIds,
                                    &Use);
    if (!NT_SUCCESS(Status))
    {
        ERR("SamLookupNamesInDomain failed (Status %08lx)\n", Status);
        return NetpNtStatusToApiStatus(Status);
    }


    if (Use[0] != SidTypeUser)
    {
        ERR("Object is not a user!\n");
        ApiStatus = NERR_GroupNotFound;
        goto done;
    }


    Status = SamOpenUser(DomainHandle,
                         DesiredAccess,
                         RelativeIds[0],
                         UserHandle);
    if (!NT_SUCCESS(Status))
    {
        ERR("SamOpenUser failed (Status %08lx)\n", Status);
        ApiStatus = NetpNtStatusToApiStatus(Status);
        goto done;
    }

done:
    if (RelativeIds != ((void*)0))
        SamFreeMemory(RelativeIds);

    if (Use != ((void*)0))
        SamFreeMemory(Use);

    return ApiStatus;
}
