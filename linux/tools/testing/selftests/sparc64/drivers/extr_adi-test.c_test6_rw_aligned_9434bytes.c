
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int version ;
typedef unsigned long off_t ;
typedef unsigned long loff_t ;


 int ADI_BLKSZ ;
 int DEBUG_PRINT_L2 (char*,unsigned char,unsigned char) ;
 int RETURN_FROM_TEST (int) ;
 int SEEK_SET ;
 int TEST6_VERSION_SZ ;
 int TEST_STEP_FAILURE (unsigned char) ;
 int* end_addr ;
 int memset (unsigned char*,int ,int) ;
 unsigned char random_version () ;
 int range_count ;
 int read_adi (int,unsigned char*,int) ;
 unsigned long seek_adi (int,unsigned long,int ) ;
 int write_adi (int,unsigned char*,int) ;

__attribute__((used)) static int test6_rw_aligned_9434bytes(int fd)
{

 unsigned long paddr =
  (end_addr[range_count - 1] - 0x5F000) & ~(ADI_BLKSZ - 1);
 unsigned char version[TEST6_VERSION_SZ],
        expected_version[TEST6_VERSION_SZ];
 loff_t offset;
 off_t oret;
 int ret, i;

 offset = paddr / ADI_BLKSZ;
 for (i = 0; i < TEST6_VERSION_SZ; i++)
  version[i] = expected_version[i] = random_version();

 oret = seek_adi(fd, offset, SEEK_SET);
 if (oret != offset) {
  ret = -1;
  TEST_STEP_FAILURE(ret);
 }

 ret = write_adi(fd, version, sizeof(version));
 if (ret != sizeof(version))
  TEST_STEP_FAILURE(ret);

 memset(version, 0, TEST6_VERSION_SZ);

 oret = seek_adi(fd, offset, SEEK_SET);
 if (oret != offset) {
  ret = -1;
  TEST_STEP_FAILURE(ret);
 }

 ret = read_adi(fd, version, sizeof(version));
 if (ret != sizeof(version))
  TEST_STEP_FAILURE(ret);

 for (i = 0; i < TEST6_VERSION_SZ; i++) {
  if (expected_version[i] != version[i]) {
   DEBUG_PRINT_L2(
    "\tExpected version %d but read version %d\n",
    expected_version[i], version[i]);
   TEST_STEP_FAILURE(-expected_version[i]);
  }
 }

 ret = 0;
out:
 RETURN_FROM_TEST(ret);
}
