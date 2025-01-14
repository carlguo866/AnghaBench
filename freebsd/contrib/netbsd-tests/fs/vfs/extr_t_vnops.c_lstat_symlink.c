
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
typedef scalar_t__ off_t ;
typedef int atf_tc_t ;


 int ATF_CHECK (int) ;
 int ATF_REQUIRE (int) ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 scalar_t__ S_ISLNK (int ) ;
 int USES_SYMLINKS ;
 int rump_sys_lstat (char const*,struct stat*) ;
 int rump_sys_symlink (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
lstat_symlink(const atf_tc_t *tc, const char *mp)
{
 const char *src, *dst;
 int res;
 struct stat st;

 USES_SYMLINKS;

 FSTEST_ENTER();

 src = "source";
 dst = "destination";

 res = rump_sys_symlink(src, dst);
 ATF_REQUIRE(res != -1);
 res = rump_sys_lstat(dst, &st);
 ATF_REQUIRE(res != -1);

 ATF_CHECK(S_ISLNK(st.st_mode) != 0);
 ATF_CHECK(st.st_size == (off_t)strlen(src));

 FSTEST_EXIT();
}
