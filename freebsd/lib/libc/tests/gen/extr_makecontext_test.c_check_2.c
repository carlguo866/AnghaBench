
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_EQ (int,int) ;

__attribute__((used)) static void
check_2(int arg1, int arg2)
{

 ATF_REQUIRE_EQ(arg1, 1);
 ATF_REQUIRE_EQ(arg2, 2);
}
