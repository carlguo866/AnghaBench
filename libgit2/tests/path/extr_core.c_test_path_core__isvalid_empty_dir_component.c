
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_b (int,int ) ;
 int git_path_isvalid (int *,char*,int ,int ) ;

void test_path_core__isvalid_empty_dir_component(void)
{
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "foo//bar", 0, 0));


 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "/", 0, 0));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "/foo", 0, 0));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "/foo/bar", 0, 0));


 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "foo/", 0, 0));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "foo/bar/", 0, 0));
}
