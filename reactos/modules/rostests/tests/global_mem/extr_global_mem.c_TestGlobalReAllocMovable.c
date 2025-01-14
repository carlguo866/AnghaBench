
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_STATUS ;
typedef int LPVOID ;
typedef scalar_t__ HGLOBAL ;


 int FAILED ;
 int GMEM_MOVEABLE ;
 scalar_t__ GlobalAlloc (int ,scalar_t__) ;
 int GlobalFree (scalar_t__) ;
 int GlobalLock (scalar_t__) ;
 scalar_t__ GlobalReAlloc (scalar_t__,scalar_t__,int ) ;
 int GlobalUnlock (scalar_t__) ;
 scalar_t__ MEM_BLOCK_SIZE ;
 int OUTPUT_Handle (scalar_t__) ;
 int OUTPUT_Line (char*) ;
 int OUTPUT_Result (int ) ;
 int PASSED ;
 int SKIPPED ;
 int TEST_CombineStatus (int ,int ) ;
 int TEST_MemoryRead (int ,scalar_t__) ;
 int TEST_MemoryWrite (int ,scalar_t__) ;

TEST_STATUS TestGlobalReAllocMovable()
{
    HGLOBAL hMem = 0;
    HGLOBAL hReAlloced = 0;
    LPVOID pMem = 0;
    TEST_STATUS subtest = SKIPPED;
    TEST_STATUS result = SKIPPED;

    OUTPUT_Line("Testing GlobalReAlloc() on memory allocated as GMGM_MOVEABLE");


    OUTPUT_Line("Allocating buffer");
    hMem = GlobalAlloc(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        OUTPUT_Line("Testing GlobalReAlloc on a unlocked block.");
        hReAlloced = GlobalReAlloc(hMem, MEM_BLOCK_SIZE - 100, 0);
        if (0 == hReAlloced)
        {
            OUTPUT_Line("GlobalReAlloc failed-- returned NULL");
            subtest = TEST_CombineStatus(subtest, FAILED);
            OUTPUT_Result(subtest);
        }
        else
        {
            OUTPUT_Line("Alloced Handle: ");
            OUTPUT_Handle(hMem);
            OUTPUT_Line("ReAlloced Handle: ");
            OUTPUT_Handle(hReAlloced);

            pMem = GlobalLock(hReAlloced);
            hMem = hReAlloced;
            subtest = TEST_CombineStatus(subtest, PASSED);
            subtest = TEST_CombineStatus(subtest, TEST_MemoryRead(pMem, MEM_BLOCK_SIZE - 100));
            subtest = TEST_CombineStatus(subtest, TEST_MemoryWrite(pMem, MEM_BLOCK_SIZE - 100));
            GlobalUnlock(hReAlloced);
        }

        GlobalFree(hMem);
    }
    else
    {
        subtest = TEST_CombineStatus(subtest, FAILED);
    }
    OUTPUT_Line("Subtest result:");
    OUTPUT_Result(subtest);
    OUTPUT_Line("");

    result = TEST_CombineStatus(result, subtest);
    subtest = SKIPPED;


    OUTPUT_Line("Allocating buffer");
    hMem = GlobalAlloc(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        OUTPUT_Line("Testing GlobalReAlloc on a locked block.");
        pMem = GlobalLock(hMem);
        hReAlloced = GlobalReAlloc(hMem, MEM_BLOCK_SIZE - 100, 0);
        if (0 == hReAlloced)
        {
            OUTPUT_Line("GlobalReAlloc failed-- returned NULL");
            subtest = TEST_CombineStatus(subtest, FAILED);
            OUTPUT_Result(subtest);
        }
        else
        {
            OUTPUT_Line("Alloced Handle: ");
            OUTPUT_Handle(hMem);
            OUTPUT_Line("ReAlloced Handle: ");
            OUTPUT_Handle(hReAlloced);
            if (hMem != hReAlloced)
            {
                OUTPUT_Line("GlobalReAlloc returned a different block.");
            }
            pMem = GlobalLock(hReAlloced);
            subtest = TEST_CombineStatus(subtest, PASSED);
            subtest = TEST_CombineStatus(subtest, TEST_MemoryRead(pMem, MEM_BLOCK_SIZE - 100));
            subtest = TEST_CombineStatus(subtest, TEST_MemoryWrite(pMem , MEM_BLOCK_SIZE - 100));
            GlobalUnlock(hReAlloced);

        }

        GlobalUnlock(hMem);

        GlobalFree(hMem);
    }
    else
    {
        subtest = TEST_CombineStatus(subtest, FAILED);
    }
    OUTPUT_Line("Subtest result:");
    OUTPUT_Result(subtest);
    OUTPUT_Line("");

    result = TEST_CombineStatus(result, subtest);

    OUTPUT_Line("");
    return result;
}
