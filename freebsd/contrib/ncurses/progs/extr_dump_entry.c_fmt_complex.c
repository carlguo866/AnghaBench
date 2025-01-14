
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* text; int used; } ;
struct TYPE_6__ {int term_names; } ;
typedef TYPE_1__ TERMTYPE ;


 int FALSE ;
 int TRUE ;
 int _nc_first_name (int ) ;
 int _nc_warning (char*,int ,...) ;
 int has_params (char*) ;
 int indent_DYN (TYPE_2__*,int) ;
 int strchr (char*,char) ;
 int strncpy_DYN (TYPE_2__*,char*,size_t) ;
 TYPE_2__ tmpbuf ;

__attribute__((used)) static char *
fmt_complex(TERMTYPE *tterm, const char *capability, char *src, int level)
{
    bool percent = FALSE;
    bool params = has_params(src);

    while (*src != '\0') {
 switch (*src) {
 case '\\':
     percent = FALSE;
     strncpy_DYN(&tmpbuf, src++, (size_t) 1);
     break;
 case '%':
     percent = TRUE;
     break;
 case '?':
 case 't':
 case 'e':
     if (percent) {
  percent = FALSE;
  tmpbuf.text[tmpbuf.used - 1] = '\n';

  if (*src == 'e') {
      indent_DYN(&tmpbuf, level);
      strncpy_DYN(&tmpbuf, "%", (size_t) 1);
      strncpy_DYN(&tmpbuf, src, (size_t) 1);
      src++;
      params = has_params(src);
      if (!params && *src != '\0' && *src != '%') {
   strncpy_DYN(&tmpbuf, "\n", (size_t) 1);
   indent_DYN(&tmpbuf, level + 1);
      }
  } else {
      indent_DYN(&tmpbuf, level + 1);
      strncpy_DYN(&tmpbuf, "%", (size_t) 1);
      strncpy_DYN(&tmpbuf, src, (size_t) 1);
      if (*src++ == '?') {
   src = fmt_complex(tterm, capability, src, level + 1);
   if (*src != '\0' && *src != '%') {
       strncpy_DYN(&tmpbuf, "\n", (size_t) 1);
       indent_DYN(&tmpbuf, level + 1);
   }
      } else if (level == 1) {
   _nc_warning("%s: %%%c without %%? in %s",
        _nc_first_name(tterm->term_names),
        *src, capability);
      }
  }
  continue;
     }
     break;
 case ';':
     if (percent) {
  percent = FALSE;
  if (level > 1) {
      tmpbuf.text[tmpbuf.used - 1] = '\n';
      indent_DYN(&tmpbuf, level);
      strncpy_DYN(&tmpbuf, "%", (size_t) 1);
      strncpy_DYN(&tmpbuf, src++, (size_t) 1);
      if (src[0] == '%'
   && src[1] != '\0'
   && (strchr("?e;", src[1])) == 0) {
   tmpbuf.text[tmpbuf.used++] = '\n';
   indent_DYN(&tmpbuf, level);
      }
      return src;
  }
  _nc_warning("%s: %%; without %%? in %s",
       _nc_first_name(tterm->term_names),
       capability);
     }
     break;
 case 'p':
     if (percent && params) {
  tmpbuf.text[tmpbuf.used - 1] = '\n';
  indent_DYN(&tmpbuf, level + 1);
  strncpy_DYN(&tmpbuf, "%", (size_t) 1);
     }
     params = FALSE;
     percent = FALSE;
     break;
 case ' ':
     strncpy_DYN(&tmpbuf, "\\s", (size_t) 2);
     ++src;
     continue;
 default:
     percent = FALSE;
     break;
 }
 strncpy_DYN(&tmpbuf, src++, (size_t) 1);
    }
    return src;
}
