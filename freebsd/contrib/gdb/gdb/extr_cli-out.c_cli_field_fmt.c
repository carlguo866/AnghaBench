
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct ui_out {int dummy; } ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;
struct TYPE_3__ {int stream; scalar_t__ suppress_output; } ;
typedef TYPE_1__ cli_out_data ;


 int field_separator () ;
 int ui_noalign ;
 TYPE_1__* ui_out_data (struct ui_out*) ;
 int vfprintf_filtered (int ,char const*,int ) ;

void
cli_field_fmt (struct ui_out *uiout, int fldno,
        int width, enum ui_align align,
        const char *fldname,
        const char *format,
        va_list args)
{
  cli_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;

  vfprintf_filtered (data->stream, format, args);

  if (align != ui_noalign)
    field_separator ();
}
