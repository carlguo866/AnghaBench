
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_term {int dummy; } ;
typedef enum tty_code_code { ____Placeholder_tty_code_code } tty_code_code ;


 char const* tparm (char*,int,int,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ tty_term_string (struct tty_term*,int) ;

const char *
tty_term_string2(struct tty_term *term, enum tty_code_code code, int a, int b)
{
 return (tparm((char *) tty_term_string(term, code), a, b, 0, 0, 0, 0, 0, 0, 0));
}
