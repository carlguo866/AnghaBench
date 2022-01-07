
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int password_hash ;
typedef int buf ;


 int * fgets (char*,int,int ) ;
 scalar_t__ nt_password_hash (int *,int ,unsigned char*) ;
 int printf (char*,...) ;
 int stdin ;
 int strlen (char*) ;

int main(int argc, char *argv[])
{
 unsigned char password_hash[16];
 size_t i;
 char *password, buf[64], *pos;

 if (argc > 1)
  password = argv[1];
 else {
  if (fgets(buf, sizeof(buf), stdin) == ((void*)0)) {
   printf("Failed to read password\n");
   return 1;
  }
  buf[sizeof(buf) - 1] = '\0';
  pos = buf;
  while (*pos != '\0') {
   if (*pos == '\r' || *pos == '\n') {
    *pos = '\0';
    break;
   }
   pos++;
  }
  password = buf;
 }

 if (nt_password_hash((u8 *) password, strlen(password), password_hash))
  return -1;
 for (i = 0; i < sizeof(password_hash); i++)
  printf("%02x", password_hash[i]);
 printf("\n");

 return 0;
}
