
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio_data {char* member_2; unsigned int size; void* data; int name; int member_1; int * member_0; } ;


 size_t C_FILESIZE ;
 size_t C_MAGIC ;
 size_t C_MODE ;
 size_t C_NAMESIZE ;
 int C_NFIELDS ;
 unsigned int MAX_CPIO_FILE_NAME ;
 char* PTR_ALIGN (char const*,int) ;
 int memcmp (char const*,char const*,size_t) ;
 int pr_warn (char*,char const*,unsigned int) ;
 int strlcpy (int ,char const*,unsigned int) ;
 size_t strlen (char const*) ;

struct cpio_data find_cpio_data(const char *path, void *data,
    size_t len, long *nextoff)
{
 const size_t cpio_header_len = 8*C_NFIELDS - 2;
 struct cpio_data cd = { ((void*)0), 0, "" };
 const char *p, *dptr, *nptr;
 unsigned int ch[C_NFIELDS], *chp, v;
 unsigned char c, x;
 size_t mypathsize = strlen(path);
 int i, j;

 p = data;

 while (len > cpio_header_len) {
  if (!*p) {

   p += 4;
   len -= 4;
   continue;
  }

  j = 6;
  chp = ch;
  for (i = C_NFIELDS; i; i--) {
   v = 0;
   while (j--) {
    v <<= 4;
    c = *p++;

    x = c - '0';
    if (x < 10) {
     v += x;
     continue;
    }

    x = (c | 0x20) - 'a';
    if (x < 6) {
     v += x + 10;
     continue;
    }

    goto quit;
   }
   *chp++ = v;
   j = 8;
  }

  if ((ch[C_MAGIC] - 0x070701) > 1)
   goto quit;

  len -= cpio_header_len;

  dptr = PTR_ALIGN(p + ch[C_NAMESIZE], 4);
  nptr = PTR_ALIGN(dptr + ch[C_FILESIZE], 4);

  if (nptr > p + len || dptr < p || nptr < dptr)
   goto quit;

  if ((ch[C_MODE] & 0170000) == 0100000 &&
      ch[C_NAMESIZE] >= mypathsize &&
      !memcmp(p, path, mypathsize)) {

   if (nextoff)
    *nextoff = (long)nptr - (long)data;

   if (ch[C_NAMESIZE] - mypathsize >= MAX_CPIO_FILE_NAME) {
    pr_warn(
    "File %s exceeding MAX_CPIO_FILE_NAME [%d]\n",
    p, MAX_CPIO_FILE_NAME);
   }
   strlcpy(cd.name, p + mypathsize, MAX_CPIO_FILE_NAME);

   cd.data = (void *)dptr;
   cd.size = ch[C_FILESIZE];
   return cd;
  }
  len -= (nptr - p);
  p = nptr;
 }

quit:
 return cd;
}
