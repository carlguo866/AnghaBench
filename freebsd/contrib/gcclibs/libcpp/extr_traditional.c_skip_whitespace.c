
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char uchar ;
struct TYPE_5__ {char* cur; } ;
struct TYPE_6__ {TYPE_1__ out; } ;
typedef TYPE_2__ cpp_reader ;


 char* copy_comment (TYPE_2__*,char const*,int) ;
 scalar_t__ is_nvspace (unsigned int) ;

__attribute__((used)) static const uchar *
skip_whitespace (cpp_reader *pfile, const uchar *cur, int skip_comments)
{
  uchar *out = pfile->out.cur;

  for (;;)
    {
      unsigned int c = *cur++;
      *out++ = c;

      if (is_nvspace (c))
 continue;

      if (c == '/' && *cur == '*' && skip_comments)
 {
   pfile->out.cur = out;
   cur = copy_comment (pfile, cur, 0 );
   out = pfile->out.cur;
   continue;
 }

      out--;
      break;
    }

  pfile->out.cur = out;
  return cur - 1;
}
