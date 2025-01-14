
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IBackgroundCopyJob ;
typedef scalar_t__ HRESULT ;


 int IBackgroundCopyJob_Release (int *) ;
 scalar_t__ IEnumBackgroundCopyJobs_Next (int ,int,int **,int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_enumJobsB ;
 scalar_t__ test_jobCountB ;

__attribute__((used)) static void test_Next_walkListNull(void)
{
    HRESULT hres;
    IBackgroundCopyJob *job;
    ULONG i;


    for (i = 0; i < test_jobCountB; i++)
    {
        hres = IEnumBackgroundCopyJobs_Next(test_enumJobsB, 1, &job, ((void*)0));
        ok(hres == S_OK, "Next failed: %08x\n", hres);
        IBackgroundCopyJob_Release(job);
    }


    hres = IEnumBackgroundCopyJobs_Next(test_enumJobsB, 1, &job, ((void*)0));
    ok(hres == S_FALSE, "Next off end of available jobs failed: %08x\n", hres);
}
