
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;


 int free (char*) ;
 int getreg (char*) ;
 char* malloc (int) ;
 int r_str_ncpy (char*,char*,int) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static st32 getlistmask(char *input) {
 st32 tempres, res = 0;
 int i, j, start, end;
 char *temp = ((void*)0);
 char *otemp = ((void*)0);
 char *temp2 = malloc (strlen (input) + 1);
 if (!temp2) {
  res = -1;
  goto end;
 }
 temp = (char *)malloc (strlen (input) + 1);
 if (!temp) {
  res = -1;
  goto end;
 }
 otemp = temp;
 while (*input != '\0') {
  for (; *input == ' '; input++) {
   ;
  }
  for (i = 0; input[i] != ',' && input[i] != '\0'; i++) {
   ;
  }
  r_str_ncpy (temp, input, i + 1);

  input += i;
  if (*input != '\0') {
   input++;
  }

  for (i = 0; temp[i] != '-' && temp[i] != '\0'; i++) {
   ;
  }
  if (i == strlen (temp)) {
   tempres = getreg (temp);
   if (tempres == -1 || tempres > 15) {
    res = -1;
    goto end;
   }
   res |= 1 << tempres;
  } else {
   strncpy (temp2, temp, i);
   temp2[i] = 0;
   temp += i + 1;
   start = getreg (temp2);
   if (start == -1 || start > 15) {
    res = -1;
    goto end;
   }
   end = getreg (temp);
   if (end == -1 || end > 15) {
    res = -1;
    goto end;
   }

   for (j = start; j <= end; j++ ) {
    res |= 1 << j;
   }
  }
 }
end:
 free (otemp);
 free (temp2);
 return res;
}
