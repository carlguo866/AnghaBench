
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 scalar_t__ git__prefixncmp_icase (char*,int,char*) ;

void test_core_string__prefixncmp_icase(void)
{
 cl_assert(git__prefixncmp_icase("", 0, "") == 0);
 cl_assert(git__prefixncmp_icase("a", 1, "") == 0);
 cl_assert(git__prefixncmp_icase("", 0, "a") < 0);
 cl_assert(git__prefixncmp_icase("a", 1, "b") < 0);
 cl_assert(git__prefixncmp_icase("A", 1, "b") < 0);
 cl_assert(git__prefixncmp_icase("a", 1, "B") < 0);
 cl_assert(git__prefixncmp_icase("b", 1, "a") > 0);
 cl_assert(git__prefixncmp_icase("B", 1, "a") > 0);
 cl_assert(git__prefixncmp_icase("b", 1, "A") > 0);
 cl_assert(git__prefixncmp_icase("ab", 2, "a") == 0);
 cl_assert(git__prefixncmp_icase("Ab", 2, "a") == 0);
 cl_assert(git__prefixncmp_icase("ab", 2, "A") == 0);
 cl_assert(git__prefixncmp_icase("ab", 1, "a") == 0);
 cl_assert(git__prefixncmp_icase("ab", 2, "ac") < 0);
 cl_assert(git__prefixncmp_icase("Ab", 2, "ac") < 0);
 cl_assert(git__prefixncmp_icase("ab", 2, "Ac") < 0);
 cl_assert(git__prefixncmp_icase("a", 1, "ac") < 0);
 cl_assert(git__prefixncmp_icase("ab", 1, "ac") < 0);
 cl_assert(git__prefixncmp_icase("ab", 2, "aa") > 0);
 cl_assert(git__prefixncmp_icase("ab", 1, "aa") < 0);
}
