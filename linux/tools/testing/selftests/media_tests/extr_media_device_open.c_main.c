
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_device_info {char* model; char* driver; } ;
typedef int media_device ;


 int MEDIA_IOC_DEVICE_INFO ;
 int O_RDWR ;
 int errno ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getuid () ;
 int ioctl (int,int ,struct media_device_info*) ;
 int ksft_exit_skip (char*) ;
 int open (char*,int ) ;
 int optarg ;
 int printf (char*,char*,...) ;
 char* strerror (int ) ;
 int strncpy (char*,int ,int) ;

int main(int argc, char **argv)
{
 int opt;
 char media_device[256];
 int count = 0;
 struct media_device_info mdi;
 int ret;
 int fd;

 if (argc < 2) {
  printf("Usage: %s [-d </dev/mediaX>]\n", argv[0]);
  exit(-1);
 }


 while ((opt = getopt(argc, argv, "d:")) != -1) {
  switch (opt) {
  case 'd':
   strncpy(media_device, optarg, sizeof(media_device) - 1);
   media_device[sizeof(media_device)-1] = '\0';
   break;
  default:
   printf("Usage: %s [-d </dev/mediaX>]\n", argv[0]);
   exit(-1);
  }
 }

 if (getuid() != 0)
  ksft_exit_skip("Please run the test as root - Exiting.\n");


 fd = open(media_device, O_RDWR);
 if (fd == -1) {
  printf("Media Device open errno %s\n", strerror(errno));
  exit(-1);
 }

 ret = ioctl(fd, MEDIA_IOC_DEVICE_INFO, &mdi);
 if (ret < 0)
  printf("Media Device Info errno %s\n", strerror(errno));
 else
  printf("Media device model %s driver %s\n",
   mdi.model, mdi.driver);
}
