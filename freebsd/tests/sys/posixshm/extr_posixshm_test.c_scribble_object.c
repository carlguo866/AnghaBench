
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,scalar_t__) ;
 scalar_t__ EEXIST ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int atf_tc_fail (char*,...) ;
 scalar_t__ errno ;
 scalar_t__ ftruncate (int,int) ;
 int getpagesize () ;
 char* mmap (int ,int,int,int ,int,int ) ;
 scalar_t__ munmap (char*,int) ;
 int shm_open (char const*,int,int) ;
 scalar_t__ shm_unlink (char const*) ;
 char const* test_path ;

__attribute__((used)) static int
scribble_object(const char *path, char value)
{
 char *page;
 int fd, pagesize;

 ATF_REQUIRE(0 < (pagesize = getpagesize()));

 fd = shm_open(path, O_CREAT|O_EXCL|O_RDWR, 0777);
 if (fd < 0 && errno == EEXIST) {
  if (shm_unlink(test_path) < 0)
   atf_tc_fail("shm_unlink");
  fd = shm_open(test_path, O_CREAT | O_EXCL | O_RDWR, 0777);
 }
 if (fd < 0)
  atf_tc_fail("shm_open failed; errno=%d", errno);
 if (ftruncate(fd, pagesize) < 0)
  atf_tc_fail("ftruncate failed; errno=%d", errno);

 page = mmap(0, pagesize, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
 if (page == MAP_FAILED)
  atf_tc_fail("mmap failed; errno=%d", errno);

 page[0] = value;
 ATF_REQUIRE_MSG(munmap(page, pagesize) == 0, "munmap failed; errno=%d",
     errno);

 return (fd);
}
