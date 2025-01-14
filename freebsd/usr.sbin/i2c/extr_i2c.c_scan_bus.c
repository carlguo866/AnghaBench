
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct skip_range {int start; int end; int member_1; int member_0; } ;
struct iiccmd {int slave; int last; int nmsgs; struct iic_msg* msgs; scalar_t__ count; } ;
struct iic_rdwr_data {int slave; int last; int nmsgs; struct iic_msg* msgs; scalar_t__ count; } ;
struct iic_msg {int len; int slave; int flags; int * buf; } ;


 scalar_t__ ENODEV ;
 scalar_t__ EOPNOTSUPP ;
 int EX_NOINPUT ;
 int EX_OK ;
 int I2CRDWR ;
 int I2CRSTCARD ;
 int I2CSTART ;
 int I2CSTOP ;
 int IIC_M_RD ;
 int O_RDWR ;
 int close (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,...) ;
 int free (int*) ;
 int ioctl (int,int ,...) ;
 scalar_t__ malloc (int) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 struct skip_range skip_get_range (char*) ;
 int skip_get_tokens (char*,int*,int) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int strlen (char*) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static int
scan_bus(struct iiccmd cmd, char *dev, int skip, char *skip_addr)
{
 struct iic_msg rdmsg;
 struct iic_rdwr_data rdwrdata;
 struct skip_range addr_range = { 0, 0 };
 int *tokens, fd, error, i, index, j;
 int len = 0, do_skip = 0, no_range = 1, num_found = 0, use_read_xfer = 0;
 uint8_t rdbyte;

 fd = open(dev, O_RDWR);
 if (fd == -1) {
  fprintf(stderr, "Error opening I2C controller (%s) for "
      "scanning: %s\n", dev, strerror(errno));
  return (EX_NOINPUT);
 }

 if (skip) {
  len = strlen(skip_addr);
  if (strstr(skip_addr, "..") != ((void*)0)) {
   addr_range = skip_get_range(skip_addr);
   no_range = 0;
  } else {
   tokens = (int *)malloc((len / 2 + 1) * sizeof(int));
   if (tokens == ((void*)0)) {
    fprintf(stderr, "Error allocating tokens "
        "buffer\n");
    error = -1;
    goto out;
   }
   index = skip_get_tokens(skip_addr, tokens,
       len / 2 + 1);
  }

  if (!no_range && (addr_range.start > addr_range.end)) {
   fprintf(stderr, "Skip address out of range\n");
   error = -1;
   goto out;
  }
 }

 printf("Scanning I2C devices on %s: ", dev);

start_over:
 if (use_read_xfer) {
  fprintf(stderr,
      "Hardware may not support START/STOP scanning; "
      "trying less-reliable read method.\n");
 }

 for (i = 1; i < 127; i++) {

  if (skip && ( addr_range.start < addr_range.end)) {
   if (i >= addr_range.start && i <= addr_range.end)
    continue;

  } else if (skip && no_range)
   for (j = 0; j < index; j++) {
    if (tokens[j] == i) {
     do_skip = 1;
     break;
    }
   }

  if (do_skip) {
   do_skip = 0;
   continue;
  }

  cmd.slave = i << 1;
  cmd.last = 1;
  cmd.count = 0;
  error = ioctl(fd, I2CRSTCARD, &cmd);
  if (error) {
   fprintf(stderr, "Controller reset failed\n");
   goto out;
  }
  if (use_read_xfer) {
   rdmsg.buf = &rdbyte;
   rdmsg.len = 1;
   rdmsg.flags = IIC_M_RD;
   rdmsg.slave = i << 1;
   rdwrdata.msgs = &rdmsg;
   rdwrdata.nmsgs = 1;
   error = ioctl(fd, I2CRDWR, &rdwrdata);
  } else {
   cmd.slave = i << 1;
   cmd.last = 1;
   error = ioctl(fd, I2CSTART, &cmd);
   if (errno == ENODEV || errno == EOPNOTSUPP) {

    use_read_xfer = 1;
    goto start_over;
   }
   ioctl(fd, I2CSTOP);
  }
  if (error == 0) {
   ++num_found;
   printf("%02x ", i);
  }
 }





 if (num_found == 0) {
  if (!use_read_xfer) {
   use_read_xfer = 1;
   goto start_over;
  }
  printf("<none found>");
 }
 printf("\n");

 error = ioctl(fd, I2CRSTCARD, &cmd);
out:
 close(fd);
 if (skip && no_range)
  free(tokens);

 if (error) {
  fprintf(stderr, "Error scanning I2C controller (%s): %s\n",
      dev, strerror(errno));
  return (EX_NOINPUT);
 } else
  return (EX_OK);
}
