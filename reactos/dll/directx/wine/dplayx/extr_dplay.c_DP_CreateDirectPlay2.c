
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {TYPE_6__* dp2; } ;
struct TYPE_16__ {int lpISP; TYPE_4__* lpCB; void* dwSPVersion; } ;
struct TYPE_14__ {int lpISP; TYPE_2__* lpCB; void* dwSPVersion; } ;
struct TYPE_17__ {TYPE_5__ dplspData; TYPE_3__ spData; TYPE_1__* lpSessionDesc; int lpNameServerData; int repliesExpected; int sendMsgs; int receiveMsgs; void* bHostInterface; scalar_t__ dwEnumSessionLock; int hEnumSessionThread; void* bConnectionOpen; } ;
struct TYPE_15__ {int dwSize; } ;
struct TYPE_13__ {int dwSize; void* dwVersion; } ;
struct TYPE_12__ {int dwSize; } ;
typedef TYPE_7__* LPVOID ;
typedef TYPE_7__ IDirectPlayImpl ;
typedef void* BOOL ;


 int DPQ_INIT (int ) ;
 void* DPSP_MAJORVERSION ;
 scalar_t__ FAILED (int ) ;
 void* FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int IID_IDPLobbySP ;
 int IID_IDirectPlaySP ;
 int INVALID_HANDLE_VALUE ;
 int NS_InitializeSessionCache (int *) ;
 void* TRUE ;
 int dplaysp_create (int *,void**,TYPE_7__*) ;
 int dplobbysp_create (int *,void**,TYPE_7__*) ;

__attribute__((used)) static BOOL DP_CreateDirectPlay2( LPVOID lpDP )
{
  IDirectPlayImpl *This = lpDP;

  This->dp2 = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof( *(This->dp2) ) );
  if ( This->dp2 == ((void*)0) )
  {
    return FALSE;
  }

  This->dp2->bConnectionOpen = FALSE;

  This->dp2->hEnumSessionThread = INVALID_HANDLE_VALUE;
  This->dp2->dwEnumSessionLock = 0;

  This->dp2->bHostInterface = FALSE;

  DPQ_INIT(This->dp2->receiveMsgs);
  DPQ_INIT(This->dp2->sendMsgs);
  DPQ_INIT(This->dp2->repliesExpected);

  if( !NS_InitializeSessionCache( &This->dp2->lpNameServerData ) )
  {

    return FALSE;
  }


  This->dp2->lpSessionDesc = HeapAlloc( GetProcessHeap(),
                                        HEAP_ZERO_MEMORY,
                                        sizeof( *This->dp2->lpSessionDesc ) );
  if( This->dp2->lpSessionDesc == ((void*)0) )
  {

    return FALSE;
  }
  This->dp2->lpSessionDesc->dwSize = sizeof( *This->dp2->lpSessionDesc );


  This->dp2->spData.dwSPVersion = DPSP_MAJORVERSION;

  This->dp2->spData.lpCB = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY,
                                      sizeof( *This->dp2->spData.lpCB ) );
  This->dp2->spData.lpCB->dwSize = sizeof( *This->dp2->spData.lpCB );
  This->dp2->spData.lpCB->dwVersion = DPSP_MAJORVERSION;


  if ( FAILED( dplaysp_create( &IID_IDirectPlaySP, (void**)&This->dp2->spData.lpISP, This ) ) )
  {

    return FALSE;
  }


  This->dp2->dplspData.dwSPVersion = DPSP_MAJORVERSION;
  This->dp2->dplspData.lpCB = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY,
                                         sizeof( *This->dp2->dplspData.lpCB ) );
  This->dp2->dplspData.lpCB->dwSize = sizeof( *This->dp2->dplspData.lpCB );

  if( FAILED( dplobbysp_create( &IID_IDPLobbySP, (void**)&This->dp2->dplspData.lpISP, This ) )
    )
  {

    return FALSE;
  }

  return TRUE;
}
