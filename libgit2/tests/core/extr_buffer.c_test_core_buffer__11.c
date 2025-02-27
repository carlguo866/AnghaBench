
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char** strings; int count; } ;
typedef TYPE_1__ git_strarray ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_text_common_prefix (TYPE_2__*,TYPE_1__*) ;

void test_core_buffer__11(void)
{
 git_buf a = GIT_BUF_INIT;
 git_strarray t;
 char *t1[] = { "nothing", "in", "common" };
 char *t2[] = { "something", "something else", "some other" };
 char *t3[] = { "something", "some fun", "no fun" };
 char *t4[] = { "happy", "happier", "happiest" };
 char *t5[] = { "happiest", "happier", "happy" };
 char *t6[] = { "no", "nope", "" };
 char *t7[] = { "", "doesn't matter" };

 t.strings = t1;
 t.count = 3;
 cl_git_pass(git_buf_text_common_prefix(&a, &t));
 cl_assert_equal_s(a.ptr, "");

 t.strings = t2;
 t.count = 3;
 cl_git_pass(git_buf_text_common_prefix(&a, &t));
 cl_assert_equal_s(a.ptr, "some");

 t.strings = t3;
 t.count = 3;
 cl_git_pass(git_buf_text_common_prefix(&a, &t));
 cl_assert_equal_s(a.ptr, "");

 t.strings = t4;
 t.count = 3;
 cl_git_pass(git_buf_text_common_prefix(&a, &t));
 cl_assert_equal_s(a.ptr, "happ");

 t.strings = t5;
 t.count = 3;
 cl_git_pass(git_buf_text_common_prefix(&a, &t));
 cl_assert_equal_s(a.ptr, "happ");

 t.strings = t6;
 t.count = 3;
 cl_git_pass(git_buf_text_common_prefix(&a, &t));
 cl_assert_equal_s(a.ptr, "");

 t.strings = t7;
 t.count = 3;
 cl_git_pass(git_buf_text_common_prefix(&a, &t));
 cl_assert_equal_s(a.ptr, "");

 git_buf_dispose(&a);
}
