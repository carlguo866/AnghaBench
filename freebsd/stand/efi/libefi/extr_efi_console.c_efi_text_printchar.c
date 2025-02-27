
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int tp_col; int tp_row; } ;
typedef TYPE_3__ teken_pos_t ;
typedef size_t teken_color_t ;
struct TYPE_11__ {int ta_format; int ta_bgcolor; int ta_fgcolor; } ;
struct text_pixel {int c; TYPE_2__ a; } ;
typedef int UINTN ;
struct TYPE_14__ {int (* SetAttribute ) (TYPE_5__*,int ) ;int (* SetCursorPosition ) (TYPE_5__*,int,int) ;TYPE_1__* Mode; } ;
struct TYPE_13__ {int tp_col; int tp_row; } ;
struct TYPE_10__ {int Attribute; } ;


 int EFI_TEXT_ATTR (int,int) ;
 size_t TC_LIGHT ;
 int TF_BLINK ;
 int TF_BOLD ;
 int TF_REVERSE ;
 struct text_pixel* buffer ;
 TYPE_5__* conout ;
 int efi_cons_efiputchar (int ) ;
 int stub1 (TYPE_5__*,int,int) ;
 int stub2 (TYPE_5__*,int ) ;
 int stub3 (TYPE_5__*,int ) ;
 size_t teken_256to16 (int ) ;
 int* teken_color_to_efi_color ;
 TYPE_4__ tp ;

__attribute__((used)) static void
efi_text_printchar(const teken_pos_t *p, bool autoscroll)
{
 UINTN a, attr;
 struct text_pixel *px;
 teken_color_t fg, bg, tmp;

 px = buffer + p->tp_col + p->tp_row * tp.tp_col;
 a = conout->Mode->Attribute;

 fg = teken_256to16(px->a.ta_fgcolor);
 bg = teken_256to16(px->a.ta_bgcolor);
 if (px->a.ta_format & TF_BOLD)
  fg |= TC_LIGHT;
 if (px->a.ta_format & TF_BLINK)
  bg |= TC_LIGHT;

 if (px->a.ta_format & TF_REVERSE) {
  tmp = fg;
  fg = bg;
  bg = tmp;
 }

 attr = EFI_TEXT_ATTR(teken_color_to_efi_color[fg],
     teken_color_to_efi_color[bg] & 0x7);

 conout->SetCursorPosition(conout, p->tp_col, p->tp_row);


 if (!autoscroll &&
     p->tp_row == tp.tp_row - 1 &&
     p->tp_col == tp.tp_col - 1)
  return;

 (void) conout->SetAttribute(conout, attr);
 efi_cons_efiputchar(px->c);
 (void) conout->SetAttribute(conout, a);
}
