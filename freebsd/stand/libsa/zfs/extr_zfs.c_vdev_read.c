
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef unsigned int off_t ;


 int DIOCGSECTORSIZE ;
 int EIO ;
 int ENOMEM ;
 int SEEK_SET ;
 int errno ;
 int ioctl (int,int ,unsigned int*) ;
 int lseek (int,unsigned int,int ) ;
 int memcpy (char*,char*,unsigned int) ;
 unsigned int min (unsigned int,size_t) ;
 int printf (char*) ;
 size_t read (int,char*,unsigned int) ;
 size_t roundup2 (size_t,unsigned int) ;
 char* zfs_alloc (unsigned int) ;
 int zfs_free (char*,unsigned int) ;

__attribute__((used)) static int
vdev_read(vdev_t *vdev, void *priv, off_t offset, void *buf, size_t bytes)
{
 int fd, ret;
 size_t res, head, tail, total_size, full_sec_size;
 unsigned secsz, do_tail_read;
 off_t start_sec;
 char *outbuf, *bouncebuf;

 fd = (uintptr_t) priv;
 outbuf = (char *) buf;
 bouncebuf = ((void*)0);

 ret = ioctl(fd, DIOCGSECTORSIZE, &secsz);
 if (ret != 0)
  return (ret);
 start_sec = offset / secsz;
 head = offset % secsz;
 total_size = roundup2(head + bytes, secsz);
 tail = total_size - (head + bytes);
 do_tail_read = ((tail > 0) && (head + bytes > secsz));
 full_sec_size = total_size;
 if (head > 0)
  full_sec_size -= secsz;
 if (do_tail_read)
  full_sec_size -= secsz;


 if ((head > 0) || do_tail_read) {
  bouncebuf = zfs_alloc(secsz);
  if (bouncebuf == ((void*)0)) {
   printf("vdev_read: out of memory\n");
   return (ENOMEM);
  }
 }

 if (lseek(fd, start_sec * secsz, SEEK_SET) == -1) {
  ret = errno;
  goto error;
 }


 if (head > 0) {
  res = read(fd, bouncebuf, secsz);
  if (res != secsz) {
   ret = EIO;
   goto error;
  }
  memcpy(outbuf, bouncebuf + head, min(secsz - head, bytes));
  outbuf += min(secsz - head, bytes);
 }


 if (full_sec_size > 0) {
  res = read(fd, outbuf, full_sec_size);
  if (res != full_sec_size) {
   ret = EIO;
   goto error;
  }
  outbuf += full_sec_size;
 }


 if (do_tail_read) {
  res = read(fd, bouncebuf, secsz);
  if (res != secsz) {
   ret = EIO;
   goto error;
  }
  memcpy(outbuf, bouncebuf, secsz - tail);
 }

 ret = 0;
error:
 if (bouncebuf != ((void*)0))
  zfs_free(bouncebuf, secsz);
 return (ret);
}
