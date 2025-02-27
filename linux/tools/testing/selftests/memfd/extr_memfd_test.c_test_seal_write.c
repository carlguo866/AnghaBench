
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SEAL_WRITE ;
 int MFD_ALLOW_SEALING ;
 int MFD_CLOEXEC ;
 int close (int) ;
 char* memfd_str ;
 int mfd_assert_add_seals (int,int ) ;
 int mfd_assert_grow (int) ;
 int mfd_assert_has_seals (int,int ) ;
 int mfd_assert_new (char*,int ,int) ;
 int mfd_assert_read (int) ;
 int mfd_assert_shrink (int) ;
 int mfd_def_size ;
 int mfd_fail_grow_write (int) ;
 int mfd_fail_write (int) ;
 int printf (char*,char*) ;

__attribute__((used)) static void test_seal_write(void)
{
 int fd;

 printf("%s SEAL-WRITE\n", memfd_str);

 fd = mfd_assert_new("kern_memfd_seal_write",
       mfd_def_size,
       MFD_CLOEXEC | MFD_ALLOW_SEALING);
 mfd_assert_has_seals(fd, 0);
 mfd_assert_add_seals(fd, F_SEAL_WRITE);
 mfd_assert_has_seals(fd, F_SEAL_WRITE);

 mfd_assert_read(fd);
 mfd_fail_write(fd);
 mfd_assert_shrink(fd);
 mfd_assert_grow(fd);
 mfd_fail_grow_write(fd);

 close(fd);
}
