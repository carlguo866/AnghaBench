
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_time_t ;


 int MSG_ERROR ;
 int MSG_INFO ;
 void* os_calloc (size_t,size_t) ;
 scalar_t__ os_file_exists (char*) ;
 int os_free (void*) ;
 scalar_t__ os_mktime (int,int,int,int,int,int,int *) ;
 void* os_realloc_array (int *,size_t,size_t) ;
 scalar_t__ os_setenv (char*,char*,int) ;
 int os_sleep (int,int) ;
 scalar_t__ os_unsetenv (char*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int os_tests(void)
{
 int errors = 0;
 void *ptr;
 os_time_t t;

 wpa_printf(MSG_INFO, "os tests");

 ptr = os_calloc((size_t) -1, (size_t) -1);
 if (ptr) {
  errors++;
  os_free(ptr);
 }
 ptr = os_calloc((size_t) 2, (size_t) -1);
 if (ptr) {
  errors++;
  os_free(ptr);
 }
 ptr = os_calloc((size_t) -1, (size_t) 2);
 if (ptr) {
  errors++;
  os_free(ptr);
 }

 ptr = os_realloc_array(((void*)0), (size_t) -1, (size_t) -1);
 if (ptr) {
  errors++;
  os_free(ptr);
 }

 os_sleep(1, 1);

 if (os_mktime(1969, 1, 1, 1, 1, 1, &t) == 0 ||
     os_mktime(1971, 0, 1, 1, 1, 1, &t) == 0 ||
     os_mktime(1971, 13, 1, 1, 1, 1, &t) == 0 ||
     os_mktime(1971, 1, 0, 1, 1, 1, &t) == 0 ||
     os_mktime(1971, 1, 32, 1, 1, 1, &t) == 0 ||
     os_mktime(1971, 1, 1, -1, 1, 1, &t) == 0 ||
     os_mktime(1971, 1, 1, 24, 1, 1, &t) == 0 ||
     os_mktime(1971, 1, 1, 1, -1, 1, &t) == 0 ||
     os_mktime(1971, 1, 1, 1, 60, 1, &t) == 0 ||
     os_mktime(1971, 1, 1, 1, 1, -1, &t) == 0 ||
     os_mktime(1971, 1, 1, 1, 1, 61, &t) == 0 ||
     os_mktime(1971, 1, 1, 1, 1, 1, &t) != 0 ||
     os_mktime(2020, 1, 2, 3, 4, 5, &t) != 0 ||
     os_mktime(2015, 12, 31, 23, 59, 59, &t) != 0)
  errors++;

 if (os_setenv("hwsim_test_env", "test value", 0) != 0 ||
     os_setenv("hwsim_test_env", "test value 2", 1) != 0 ||
     os_unsetenv("hwsim_test_env") != 0)
  errors++;

 if (os_file_exists("/this-file-does-not-exists-hwsim") != 0)
  errors++;

 if (errors) {
  wpa_printf(MSG_ERROR, "%d os test(s) failed", errors);
  return -1;
 }

 return 0;
}
