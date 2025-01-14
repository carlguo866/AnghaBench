
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int uchar_t ;
typedef int nvlist_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int buf ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int fnvlist_add_boolean (int *,char const*) ;
 int fnvlist_add_boolean_array (int *,char const*,int *,int) ;
 int fnvlist_add_boolean_value (int *,char const*,int ) ;
 int fnvlist_add_byte (int *,char const*,int) ;
 int fnvlist_add_byte_array (int *,char const*,int*,int) ;
 int fnvlist_add_int16 (int *,char const*,int) ;
 int fnvlist_add_int16_array (int *,char const*,int*,int) ;
 int fnvlist_add_int32 (int *,char const*,int) ;
 int fnvlist_add_int32_array (int *,char const*,int*,int) ;
 int fnvlist_add_int64 (int *,char const*,int) ;
 int fnvlist_add_int64_array (int *,char const*,int*,int) ;
 int fnvlist_add_int8 (int *,char const*,int) ;
 int fnvlist_add_int8_array (int *,char const*,int*,int) ;
 int fnvlist_add_nvlist (int *,char const*,int *) ;
 int fnvlist_add_nvlist_array (int *,char const*,int **,int) ;
 int fnvlist_add_string (int *,char const*,char*) ;
 int fnvlist_add_string_array (int *,char const*,char* const*,int) ;
 int fnvlist_add_uint16 (int *,char const*,int) ;
 int fnvlist_add_uint16_array (int *,char const*,int*,int) ;
 int fnvlist_add_uint32 (int *,char const*,int) ;
 int fnvlist_add_uint32_array (int *,char const*,int*,int) ;
 int fnvlist_add_uint64 (int *,char const*,int) ;
 int fnvlist_add_uint64_array (int *,char const*,int*,int) ;
 int fnvlist_add_uint8 (int *,char const*,int) ;
 int fnvlist_add_uint8_array (int *,char const*,int*,int) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int free (char*) ;
 char* malloc (int) ;
 int * nvl ;
 int snprintf (char*,int,char*,int) ;
 int test (char*,int ,int ) ;

__attribute__((used)) static void
run_tests(void)
{
 const char *key = "key";


 int len = 1024 * 31;
 char *bigstring = malloc(len);
 for (int i = 0; i < len; i++)
  bigstring[i] = 'a' + i % 26;
 bigstring[len - 1] = '\0';

 nvl = fnvlist_alloc();

 fnvlist_add_boolean(nvl, key);
 test("boolean", B_TRUE, B_FALSE);

 fnvlist_add_boolean_value(nvl, key, B_TRUE);
 test("boolean_value", B_FALSE, B_FALSE);

 fnvlist_add_byte(nvl, key, 1);
 test("byte", B_FALSE, B_FALSE);

 fnvlist_add_int8(nvl, key, 1);
 test("int8", B_FALSE, B_FALSE);

 fnvlist_add_uint8(nvl, key, 1);
 test("uint8", B_FALSE, B_FALSE);

 fnvlist_add_int16(nvl, key, 1);
 test("int16", B_FALSE, B_FALSE);

 fnvlist_add_uint16(nvl, key, 1);
 test("uint16", B_FALSE, B_FALSE);

 fnvlist_add_int32(nvl, key, 1);
 test("int32", B_FALSE, B_FALSE);

 fnvlist_add_uint32(nvl, key, 1);
 test("uint32", B_FALSE, B_FALSE);

 fnvlist_add_int64(nvl, key, 1);
 test("int64", B_TRUE, B_TRUE);

 fnvlist_add_uint64(nvl, key, 1);
 test("uint64", B_FALSE, B_FALSE);

 fnvlist_add_string(nvl, key, "1");
 test("string", B_TRUE, B_TRUE);


 {
  nvlist_t *val = fnvlist_alloc();
  fnvlist_add_string(val, "subkey", "subvalue");
  fnvlist_add_nvlist(nvl, key, val);
  fnvlist_free(val);
  test("nvlist", B_TRUE, B_TRUE);
 }
 {
  boolean_t val[2] = { B_FALSE, B_TRUE };
  fnvlist_add_boolean_array(nvl, key, val, 2);
  test("boolean_array", B_FALSE, B_FALSE);
 }
 {
  uchar_t val[2] = { 0, 1 };
  fnvlist_add_byte_array(nvl, key, val, 2);
  test("byte_array", B_FALSE, B_FALSE);
 }
 {
  int8_t val[2] = { 0, 1 };
  fnvlist_add_int8_array(nvl, key, val, 2);
  test("int8_array", B_FALSE, B_FALSE);
 }
 {
  uint8_t val[2] = { 0, 1 };
  fnvlist_add_uint8_array(nvl, key, val, 2);
  test("uint8_array", B_FALSE, B_FALSE);
 }
 {
  int16_t val[2] = { 0, 1 };
  fnvlist_add_int16_array(nvl, key, val, 2);
  test("int16_array", B_FALSE, B_FALSE);
 }
 {
  uint16_t val[2] = { 0, 1 };
  fnvlist_add_uint16_array(nvl, key, val, 2);
  test("uint16_array", B_FALSE, B_FALSE);
 }
 {
  int32_t val[2] = { 0, 1 };
  fnvlist_add_int32_array(nvl, key, val, 2);
  test("int32_array", B_FALSE, B_FALSE);
 }
 {
  uint32_t val[2] = { 0, 1 };
  fnvlist_add_uint32_array(nvl, key, val, 2);
  test("uint32_array", B_FALSE, B_FALSE);
 }
 {
  int64_t val[2] = { 0, 1 };
  fnvlist_add_int64_array(nvl, key, val, 2);
  test("int64_array", B_TRUE, B_FALSE);
 }
 {
  uint64_t val[2] = { 0, 1 };
  fnvlist_add_uint64_array(nvl, key, val, 2);
  test("uint64_array", B_FALSE, B_FALSE);
 }
 {
  char *const val[2] = { "0", "1" };
  fnvlist_add_string_array(nvl, key, val, 2);
  test("string_array", B_TRUE, B_FALSE);
 }
 {
  nvlist_t *val[2];
  val[0] = fnvlist_alloc();
  fnvlist_add_string(val[0], "subkey", "subvalue");
  val[1] = fnvlist_alloc();
  fnvlist_add_string(val[1], "subkey2", "subvalue2");
  fnvlist_add_nvlist_array(nvl, key, val, 2);
  fnvlist_free(val[0]);
  fnvlist_free(val[1]);
  test("nvlist_array", B_FALSE, B_FALSE);
 }
 {
  fnvlist_add_string(nvl, bigstring, "1");
  test("large_key", B_TRUE, B_TRUE);
 }
 {
  fnvlist_add_string(nvl, key, bigstring);
  test("large_value", B_TRUE, B_TRUE);
 }
 {
  for (int i = 0; i < 1024; i++) {
   char buf[32];
   (void) snprintf(buf, sizeof (buf), "key-%u", i);
   fnvlist_add_int64(nvl, buf, i);
  }
  test("many_keys", B_TRUE, B_TRUE);
 }

 {
  for (int i = 0; i < 10; i++) {
   nvlist_t *newval = fnvlist_alloc();
   fnvlist_add_nvlist(newval, "key", nvl);
   fnvlist_free(nvl);
   nvl = newval;
  }
  test("deeply_nested_pos", B_TRUE, B_TRUE);
 }
 {
  for (int i = 0; i < 90; i++) {
   nvlist_t *newval = fnvlist_alloc();
   fnvlist_add_nvlist(newval, "key", nvl);
   fnvlist_free(nvl);
   nvl = newval;
  }
  test("deeply_nested_neg", B_FALSE, B_FALSE);
 }

 free(bigstring);
 fnvlist_free(nvl);
}
