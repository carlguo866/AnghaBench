
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_predicate { ____Placeholder_test_predicate } test_predicate ;


 int TEST_CHECK (long long,long long,int) ;
 int fprintf (int ,char*,char const*,long long,long long) ;
 int stderr ;
 int test_die () ;
 int test_header (char const*,int,char const*,char const*,char*,int) ;

void
assert_long_long(const char *file, int line, const char *a1, const char *a2,
    long long aa1, long long aa2, enum test_predicate pred)
{
 TEST_CHECK(aa1, aa2, pred);
 test_header(file, line, a1, a2, "LONG LONG", pred);
 fprintf(stderr, "%12s = %lld / 0x%llx\n", a1, aa1, aa1);
 fprintf(stderr, "%12s = %lld / 0x%llx\n", a2, aa2, aa2);
 test_die();
}
