
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int ENAMETOOLONG ;
 size_t INT_MAX ;
 int MAX_PATH ;
 int errno ;
 int memmove (int*,int*,int) ;
 int path__cwd (int*,int) ;
 scalar_t__ wcsncmp (char*,int*,int) ;

int git_win32_path__cwd(wchar_t *out, size_t len)
{
 int cwd_len;

 if (len > INT_MAX) {
  errno = ENAMETOOLONG;
  return -1;
 }

 if ((cwd_len = path__cwd(out, (int)len)) < 0)
  return -1;


 if (wcsncmp(L"\\\\", out, 2) == 0) {





  if (cwd_len > MAX_PATH - 4) {
   errno = ENAMETOOLONG;
   return -1;
  }

  memmove(out+2, out, sizeof(wchar_t) * cwd_len);
  out[0] = L'U';
  out[1] = L'N';
  out[2] = L'C';

  cwd_len += 2;
 }





 else if (cwd_len > MAX_PATH - 2) {
  errno = ENAMETOOLONG;
  return -1;
 }

 return cwd_len;
}
