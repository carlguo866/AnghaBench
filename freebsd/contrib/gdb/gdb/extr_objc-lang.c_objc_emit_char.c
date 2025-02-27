
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 scalar_t__ PRINT_LITERAL_FORM (int) ;
 int fprintf_filtered (struct ui_file*,char*,unsigned int) ;
 int fputs_filtered (char*,struct ui_file*) ;

__attribute__((used)) static void
objc_emit_char (int c, struct ui_file *stream, int quoter)
{

  c &= 0xFF;

  if (PRINT_LITERAL_FORM (c))
    {
      if (c == '\\' || c == quoter)
 {
   fputs_filtered ("\\", stream);
 }
      fprintf_filtered (stream, "%c", c);
    }
  else
    {
      switch (c)
 {
 case '\n':
   fputs_filtered ("\\n", stream);
   break;
 case '\b':
   fputs_filtered ("\\b", stream);
   break;
 case '\t':
   fputs_filtered ("\\t", stream);
   break;
 case '\f':
   fputs_filtered ("\\f", stream);
   break;
 case '\r':
   fputs_filtered ("\\r", stream);
   break;
 case '\033':
   fputs_filtered ("\\e", stream);
   break;
 case '\007':
   fputs_filtered ("\\a", stream);
   break;
 default:
   fprintf_filtered (stream, "\\%.3o", (unsigned int) c);
   break;
 }
    }
}
