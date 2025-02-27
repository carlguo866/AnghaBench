
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_SHARED ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int errno ;
 void* mmap64 (void*,unsigned long,int,int,int,unsigned long long) ;

int os_map_memory(void *virt, int fd, unsigned long long off, unsigned long len,
    int r, int w, int x)
{
 void *loc;
 int prot;

 prot = (r ? PROT_READ : 0) | (w ? PROT_WRITE : 0) |
  (x ? PROT_EXEC : 0);

 loc = mmap64((void *) virt, len, prot, MAP_SHARED | MAP_FIXED,
       fd, off);
 if (loc == MAP_FAILED)
  return -errno;
 return 0;
}
