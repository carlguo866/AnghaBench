
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char EXAMPLES ;
 int cfag12864b_blit () ;
 int cfag12864b_exit () ;
 scalar_t__ cfag12864b_init (char*) ;
 int example (unsigned char) ;
 char getchar () ;
 int printf (char*,char*) ;

int main(int argc, char *argv[])
{
 unsigned char n;

 if (argc != 2) {
  printf(
   "Syntax:  %s fbdev\n"
   "Usually: /dev/fb0, /dev/fb1...\n", argv[0]);
  return -1;
 }

 if (cfag12864b_init(argv[1])) {
  printf("Can't init %s fbdev\n", argv[1]);
  return -2;
 }

 for (n = 1; n <= EXAMPLES; n++) {
  example(n);
  cfag12864b_blit();
  while (getchar() != '\n');
 }

 cfag12864b_exit();

 return 0;
}
