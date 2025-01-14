
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wDevID; } ;
typedef TYPE_1__ WINE_MCIMIDI ;
struct TYPE_6__ {int wDeviceID; int wType; int wCustomCommandTable; } ;
typedef TYPE_2__* LPMCI_OPEN_DRIVER_PARMSW ;
typedef int LPCWSTR ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int MCI_DEVTYPE_SEQUENCER ;
 int MCI_NO_COMMAND_TABLE ;
 int mciSetDriverData (int,int ) ;

__attribute__((used)) static DWORD MIDI_drvOpen(LPCWSTR str, LPMCI_OPEN_DRIVER_PARMSW modp)
{
    WINE_MCIMIDI* wmm;

    if (!modp) return 0xFFFFFFFF;

    wmm = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(WINE_MCIMIDI));

    if (!wmm)
 return 0;

    wmm->wDevID = modp->wDeviceID;
    mciSetDriverData(wmm->wDevID, (DWORD_PTR)wmm);
    modp->wCustomCommandTable = MCI_NO_COMMAND_TABLE;
    modp->wType = MCI_DEVTYPE_SEQUENCER;
    return modp->wDeviceID;
}
