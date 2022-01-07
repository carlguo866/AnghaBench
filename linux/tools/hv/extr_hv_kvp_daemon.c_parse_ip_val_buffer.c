
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int parse_ip_val_buffer(char *in_buf, int *offset,
    char *out_buf, int out_len)
{
 char *x;
 char *start;






 start = in_buf + *offset;

 x = strchr(start, ';');
 if (x)
  *x = 0;
 else
  x = start + strlen(start);

 if (strlen(start) != 0) {
  int i = 0;



  while (start[i] == ' ')
   i++;

  if ((x - start) <= out_len) {
   strcpy(out_buf, (start + i));
   *offset += (x - start) + 1;
   return 1;
  }
 }
 return 0;
}
