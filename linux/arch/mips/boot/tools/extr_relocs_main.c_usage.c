
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;

__attribute__((used)) static void usage(void)
{
 die("relocs [--reloc-info|--text|--bin|--keep] vmlinux\n");
}
