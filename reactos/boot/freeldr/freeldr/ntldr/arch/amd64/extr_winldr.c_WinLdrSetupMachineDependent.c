
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_5__ {int MachineType; int * CommonDataArea; } ;
struct TYPE_6__ {TYPE_1__ I386; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef int * PVOID ;
typedef TYPE_3__* PLOADER_PARAMETER_BLOCK ;
typedef int * PKGDTENTRY ;
typedef int KTSS ;
typedef int KIDTENTRY ;
typedef int KGDTENTRY ;


 scalar_t__ DbgPrint ;
 scalar_t__ FALSE ;
 int * GdtIdt ;
 int LoaderMemoryData ;
 int LoaderStartupPcrPage ;
 int MACHINE_TYPE_ISA ;
 int MM_PAGE_SHIFT ;
 int MM_PAGE_SIZE ;
 scalar_t__ MempAllocatePageTables () ;
 scalar_t__ MmAllocateMemoryWithType (int,int ) ;
 int NUM_GDT ;
 int NUM_IDT ;
 int PcrBasePage ;
 int RtlZeroMemory (int *,int) ;
 int TssBasePage ;
 int UiMessageBox (char*) ;
 int WinLdrMapSpecialPages () ;

void WinLdrSetupMachineDependent(PLOADER_PARAMETER_BLOCK LoaderBlock)
{
    ULONG_PTR Pcr = 0;
    ULONG_PTR Tss = 0;
    ULONG BlockSize, NumPages;

    LoaderBlock->u.I386.CommonDataArea = (PVOID)DbgPrint;
    LoaderBlock->u.I386.MachineType = MACHINE_TYPE_ISA;


    Pcr = (ULONG_PTR)MmAllocateMemoryWithType(2 * MM_PAGE_SIZE, LoaderStartupPcrPage);
    PcrBasePage = Pcr >> MM_PAGE_SHIFT;
    if (Pcr == 0)
    {
        UiMessageBox("Can't allocate PCR.");
        return;
    }
    RtlZeroMemory((PVOID)Pcr, 2 * MM_PAGE_SIZE);


    BlockSize = (sizeof(KTSS) + MM_PAGE_SIZE) & ~(MM_PAGE_SIZE - 1);
    Tss = (ULONG_PTR)MmAllocateMemoryWithType(BlockSize, LoaderMemoryData);
    TssBasePage = Tss >> MM_PAGE_SHIFT;


    BlockSize = NUM_GDT * sizeof(KGDTENTRY) + NUM_IDT * sizeof(KIDTENTRY);
    NumPages = (BlockSize + MM_PAGE_SIZE - 1) >> MM_PAGE_SHIFT;
    GdtIdt = (PKGDTENTRY)MmAllocateMemoryWithType(NumPages * MM_PAGE_SIZE, LoaderMemoryData);
    if (GdtIdt == ((void*)0))
    {
        UiMessageBox("Can't allocate pages for GDT+IDT!");
        return;
    }


    RtlZeroMemory(GdtIdt, NumPages << MM_PAGE_SHIFT);



    if (MempAllocatePageTables() == FALSE)
    {

    }


    WinLdrMapSpecialPages();
}
