
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
print_usage(const char *f)
{
  printf("Usage: %s [switches] irepfiles\n", f);
  printf("switches:\n");
  printf("  -l, --lvar   remove LVAR section too.\n");
}
