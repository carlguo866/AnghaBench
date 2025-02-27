
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WINSPOOL_HANDLE ;
struct TYPE_2__ {int cbStructureSize; int pInfo; } ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int ASSERT (int) ;
 int AlignRpcPtr (int *,scalar_t__*) ;
 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ EnumPortsW (int ,scalar_t__,int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ GetLastError () ;
 int MarshallDownStructuresArray (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ RpcImpersonateClient (int *) ;
 int RpcRevertToSelf () ;
 int TRUE ;
 int UndoAlignRpcPtr (int *,int ,scalar_t__,scalar_t__*) ;
 TYPE_1__** pPortInfoMarshalling ;

DWORD
_RpcEnumPorts(WINSPOOL_HANDLE pName, DWORD Level, BYTE* pPort, DWORD cbBuf, DWORD* pcbNeeded, DWORD* pcReturned)
{
    DWORD dwErrorCode;
    PBYTE pPortAligned;

    dwErrorCode = RpcImpersonateClient(((void*)0));
    if (dwErrorCode != ERROR_SUCCESS)
    {
        ERR("RpcImpersonateClient failed with error %lu!\n", dwErrorCode);
        return dwErrorCode;
    }

    pPortAligned = AlignRpcPtr(pPort, &cbBuf);

    if (EnumPortsW(pName, Level, pPortAligned, cbBuf, pcbNeeded, pcReturned))
    {

        ASSERT(Level >= 1 && Level <= 2);
        MarshallDownStructuresArray(pPortAligned, *pcReturned, pPortInfoMarshalling[Level]->pInfo, pPortInfoMarshalling[Level]->cbStructureSize, TRUE);
    }
    else
    {
        dwErrorCode = GetLastError();
    }

    RpcRevertToSelf();
    UndoAlignRpcPtr(pPort, pPortAligned, cbBuf, pcbNeeded);

    return dwErrorCode;
}
