
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktest_current_time ;
 int ktest_emit_testbegin (char const*) ;
 char const* ktest_test_name ;
 int mach_absolute_time () ;

void
ktest_testbegin(const char * test_name) {
 ktest_current_time = mach_absolute_time();
 ktest_test_name = test_name;
 ktest_emit_testbegin(test_name);
}
