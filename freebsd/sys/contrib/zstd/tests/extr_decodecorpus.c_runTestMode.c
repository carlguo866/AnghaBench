
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ genType_e ;
typedef int UTIL_time_t ;
typedef scalar_t__ U64 ;
typedef scalar_t__ U32 ;


 int DISPLAY (char*,...) ;
 int DISPLAYUPDATE (char*,unsigned int,...) ;
 unsigned int const SEC_TO_MICRO ;
 scalar_t__ const UTIL_clockSpanMicro (int const) ;
 int UTIL_getTime () ;
 scalar_t__ gt_frame ;
 int runBlockTest (scalar_t__*) ;
 int runFrameTest (scalar_t__*) ;

__attribute__((used)) static int runTestMode(U32 seed, unsigned numFiles, unsigned const testDurationS,
                       genType_e genType)
{
    unsigned fnum;

    UTIL_time_t const startClock = UTIL_getTime();
    U64 const maxClockSpan = testDurationS * SEC_TO_MICRO;

    if (numFiles == 0 && !testDurationS) numFiles = 1;

    DISPLAY("seed: %u\n", (unsigned)seed);

    for (fnum = 0; fnum < numFiles || UTIL_clockSpanMicro(startClock) < maxClockSpan; fnum++) {
        if (fnum < numFiles)
            DISPLAYUPDATE("\r%u/%u        ", fnum, numFiles);
        else
            DISPLAYUPDATE("\r%u           ", fnum);

        { int const ret = (genType == gt_frame) ?
                            runFrameTest(&seed) :
                            runBlockTest(&seed);
            if (ret) return ret;
        }
    }

    DISPLAY("\r%u tests completed: ", fnum);
    DISPLAY("OK\n");

    return 0;
}
