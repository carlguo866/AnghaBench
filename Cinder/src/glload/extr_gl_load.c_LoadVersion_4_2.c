
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LoadCore_Version_1_0 () ;
 scalar_t__ LoadCore_Version_1_1 () ;
 scalar_t__ LoadCore_Version_1_2 () ;
 scalar_t__ LoadCore_Version_1_3 () ;
 scalar_t__ LoadCore_Version_1_4 () ;
 scalar_t__ LoadCore_Version_1_5 () ;
 scalar_t__ LoadCore_Version_2_0 () ;
 scalar_t__ LoadCore_Version_2_1 () ;
 scalar_t__ LoadCore_Version_3_0 () ;
 scalar_t__ LoadCore_Version_3_1 () ;
 scalar_t__ LoadCore_Version_3_2 () ;
 scalar_t__ LoadCore_Version_3_3 () ;
 scalar_t__ LoadCore_Version_4_0 () ;

__attribute__((used)) static int LoadVersion_4_2()
{
 int numFailed = 0;
 numFailed += LoadCore_Version_1_0();
 numFailed += LoadCore_Version_1_1();
 numFailed += LoadCore_Version_1_2();
 numFailed += LoadCore_Version_1_3();
 numFailed += LoadCore_Version_1_4();
 numFailed += LoadCore_Version_1_5();
 numFailed += LoadCore_Version_2_0();
 numFailed += LoadCore_Version_2_1();
 numFailed += LoadCore_Version_3_0();
 numFailed += LoadCore_Version_3_1();
 numFailed += LoadCore_Version_3_2();
 numFailed += LoadCore_Version_3_3();
 numFailed += LoadCore_Version_4_0();
 return numFailed;
}
