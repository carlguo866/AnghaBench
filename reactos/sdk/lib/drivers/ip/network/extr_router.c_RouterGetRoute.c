
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_10__ {int Netmask; int NetworkAddress; TYPE_1__* Router; } ;
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_8__ {int State; int Address; } ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int * PIP_ADDRESS ;
typedef TYPE_3__* PFIB_ENTRY ;
typedef int KIRQL ;


 int A2S (int *) ;
 scalar_t__ AddrCountPrefixBits (int *) ;
 TYPE_3__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 scalar_t__ CommonPrefixLength (int *,int *) ;
 int DEBUG_ROUTER ;
 TYPE_2__ FIBListHead ;
 int FIBLock ;
 int FIB_ENTRY ;
 int ListEntry ;
 int NUD_INCOMPLETE ;
 int NUD_STALE ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

PNEIGHBOR_CACHE_ENTRY RouterGetRoute(PIP_ADDRESS Destination)
{
    KIRQL OldIrql;
    PLIST_ENTRY CurrentEntry;
    PLIST_ENTRY NextEntry;
    PFIB_ENTRY Current;
    UCHAR State;
    UINT Length, BestLength = 0, MaskLength;
    PNEIGHBOR_CACHE_ENTRY NCE, BestNCE = ((void*)0);

    TI_DbgPrint(DEBUG_ROUTER, ("Called. Destination (0x%X)\n", Destination));

    TI_DbgPrint(DEBUG_ROUTER, ("Destination (%s)\n", A2S(Destination)));

    TcpipAcquireSpinLock(&FIBLock, &OldIrql);

    CurrentEntry = FIBListHead.Flink;
    while (CurrentEntry != &FIBListHead) {
        NextEntry = CurrentEntry->Flink;
     Current = CONTAINING_RECORD(CurrentEntry, FIB_ENTRY, ListEntry);

        NCE = Current->Router;
        State = NCE->State;

 Length = CommonPrefixLength(Destination, &Current->NetworkAddress);
 MaskLength = AddrCountPrefixBits(&Current->Netmask);

 TI_DbgPrint(DEBUG_ROUTER,("This-Route: %s (Sharing %d bits)\n",
      A2S(&NCE->Address), Length));

 if(Length >= MaskLength && (Length > BestLength || !BestNCE) &&
           ((!(State & NUD_STALE) && !(State & NUD_INCOMPLETE)) || !BestNCE)) {

     BestNCE = NCE;
     BestLength = Length;
     TI_DbgPrint(DEBUG_ROUTER,("Route selected\n"));
 }

        CurrentEntry = NextEntry;
    }

    TcpipReleaseSpinLock(&FIBLock, OldIrql);

    if( BestNCE ) {
 TI_DbgPrint(DEBUG_ROUTER,("Routing to %s\n", A2S(&BestNCE->Address)));
    } else {
 TI_DbgPrint(DEBUG_ROUTER,("Packet won't be routed\n"));
    }

    return BestNCE;
}
