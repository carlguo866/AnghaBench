
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 scalar_t__ EEXIST ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 scalar_t__ errno ;
 int getpid () ;
 int isc__errno2result (scalar_t__) ;
 scalar_t__ isdigit (char) ;
 int mkdir (char*,int) ;
 int strlen (char*) ;

isc_result_t
isc_dir_createunique(char *templet) {
 isc_result_t result;
 char *x;
 char *p;
 int i;
 int pid;

 REQUIRE(templet != ((void*)0));





 pid = getpid();




 for (x = templet + strlen(templet) - 1; *x == 'X' && x >= templet;
      x--, pid /= 10)
  *x = pid % 10 + '0';

 x++;

 do {
  i = mkdir(templet, 0700);
  if (i == 0 || errno != EEXIST)
   break;




  p = x;
  while (*p != '\0') {
   if (isdigit(*p & 0xff))
    *p = 'a';
   else if (*p != 'z')
    ++*p;
   else {



    *p++ = 'a';
    continue;
   }

   break;
  }

  if (*p == '\0') {





   errno = EEXIST;
   break;
  }
 } while (1);

 if (i == -1)
  result = isc__errno2result(errno);
 else
  result = ISC_R_SUCCESS;

 return (result);
}
