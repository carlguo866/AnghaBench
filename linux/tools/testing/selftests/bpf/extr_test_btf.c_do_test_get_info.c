
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct btf_get_info_test {char* descr; int (* special_test ) (unsigned int) ;int btf_size_delta; int str_sec_size; int str_sec; int raw_types; } ;
struct bpf_btf_info {unsigned int btf_size; int id; int btf; } ;
typedef int info ;
struct TYPE_2__ {scalar_t__ always_log; } ;


 int BTF_LOG_BUF_SIZE ;
 scalar_t__ CHECK (int,char*,...) ;
 TYPE_1__ args ;
 int bpf_load_btf (int*,unsigned int,char*,int ,scalar_t__) ;
 int bpf_obj_get_info_by_fd (int,struct bpf_btf_info*,int*) ;
 char* btf_log_buf ;
 int* btf_raw_create (int *,int ,int ,int ,unsigned int*,int *) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (int*) ;
 struct btf_get_info_test* get_info_tests ;
 int hdr_tmpl ;
 int* malloc (unsigned int) ;
 int memcmp (int*,int*,unsigned int) ;
 int memset (int*,int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int ptr_to_u64 (int*) ;
 int stderr ;
 int stub1 (unsigned int) ;

__attribute__((used)) static int do_test_get_info(unsigned int test_num)
{
 const struct btf_get_info_test *test = &get_info_tests[test_num - 1];
 unsigned int raw_btf_size, user_btf_size, expected_nbytes;
 uint8_t *raw_btf = ((void*)0), *user_btf = ((void*)0);
 struct bpf_btf_info info = {};
 int btf_fd = -1, err, ret;
 uint32_t info_len;

 fprintf(stderr, "BTF GET_INFO test[%u] (%s): ",
  test_num, test->descr);

 if (test->special_test)
  return test->special_test(test_num);

 raw_btf = btf_raw_create(&hdr_tmpl,
     test->raw_types,
     test->str_sec,
     test->str_sec_size,
     &raw_btf_size, ((void*)0));

 if (!raw_btf)
  return -1;

 *btf_log_buf = '\0';

 user_btf = malloc(raw_btf_size);
 if (CHECK(!user_btf, "!user_btf")) {
  err = -1;
  goto done;
 }

 btf_fd = bpf_load_btf(raw_btf, raw_btf_size,
         btf_log_buf, BTF_LOG_BUF_SIZE,
         args.always_log);
 if (CHECK(btf_fd == -1, "errno:%d", errno)) {
  err = -1;
  goto done;
 }

 user_btf_size = (int)raw_btf_size + test->btf_size_delta;
 expected_nbytes = min(raw_btf_size, user_btf_size);
 if (raw_btf_size > expected_nbytes)
  memset(user_btf + expected_nbytes, 0xff,
         raw_btf_size - expected_nbytes);

 info_len = sizeof(info);
 info.btf = ptr_to_u64(user_btf);
 info.btf_size = user_btf_size;

 ret = 0;
 err = bpf_obj_get_info_by_fd(btf_fd, &info, &info_len);
 if (CHECK(err || !info.id || info_len != sizeof(info) ||
    info.btf_size != raw_btf_size ||
    (ret = memcmp(raw_btf, user_btf, expected_nbytes)),
    "err:%d errno:%d info.id:%u info_len:%u sizeof(info):%lu raw_btf_size:%u info.btf_size:%u expected_nbytes:%u memcmp:%d",
    err, errno, info.id, info_len, sizeof(info),
    raw_btf_size, info.btf_size, expected_nbytes, ret)) {
  err = -1;
  goto done;
 }

 while (expected_nbytes < raw_btf_size) {
  fprintf(stderr, "%u...", expected_nbytes);
  if (CHECK(user_btf[expected_nbytes++] != 0xff,
     "user_btf[%u]:%x != 0xff", expected_nbytes - 1,
     user_btf[expected_nbytes - 1])) {
   err = -1;
   goto done;
  }
 }

 fprintf(stderr, "OK");

done:
 if (*btf_log_buf && (err || args.always_log))
  fprintf(stderr, "\n%s", btf_log_buf);

 free(raw_btf);
 free(user_btf);

 if (btf_fd != -1)
  close(btf_fd);

 return err;
}
