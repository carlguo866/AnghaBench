
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

__attribute__((used)) static void print_banner(const char* text)
{
    printf("\n#### %s #####\n\n", text);
}
