
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_16__ {int y; int x; } ;
typedef TYPE_2__ fz_point ;
typedef int fz_irect ;
struct TYPE_17__ {scalar_t__ active; scalar_t__ down; scalar_t__ right; scalar_t__ down_y; scalar_t__ y; scalar_t__ down_x; scalar_t__ x; scalar_t__ hot; } ;


 int GL_LINES ;
 int ctx ;
 int fz_expand_irect (int ,int) ;
 TYPE_1__ fz_expand_rect (TYPE_1__,float) ;
 int fz_make_irect (int ,int ,int ,int ) ;
 float fz_matrix_expansion (int ) ;
 void* fz_max (int ,int ) ;
 void* fz_min (int ,int ) ;
 TYPE_2__ fz_transform_point (TYPE_2__,int ) ;
 int glBegin (int ) ;
 int glColor4f (int,int ,int ,int) ;
 int glEnd () ;
 int glVertex2f (int ,int ) ;
 float pdf_annot_border (int ,scalar_t__) ;
 int pdf_annot_line (int ,scalar_t__,TYPE_2__*,TYPE_2__*) ;
 int pdf_set_annot_line (int ,scalar_t__,TYPE_2__,TYPE_2__) ;
 scalar_t__ points_differ (TYPE_2__,TYPE_2__,int) ;
 scalar_t__ selected_annot ;
 TYPE_3__ ui ;
 scalar_t__ ui_mouse_inside (int ) ;
 int view_page_ctm ;
 int view_page_inv_ctm ;

__attribute__((used)) static void do_edit_line(fz_irect canvas_area, fz_irect area, fz_rect *rect)
{
 enum { EL_NONE, EL_A=1, EL_B=2, EL_MOVE=EL_A|EL_B };
 static fz_point start_a, start_b;
 static int state = EL_NONE;
 fz_irect a_grab, b_grab;
 fz_point a, b;
 float lw;

 area = fz_expand_irect(area, 5);
 if (ui_mouse_inside(canvas_area) && ui_mouse_inside(area))
 {
  ui.hot = selected_annot;
  if (!ui.active && ui.down)
  {
   ui.active = selected_annot;
   pdf_annot_line(ctx, selected_annot, &start_a, &start_b);
   start_a = fz_transform_point(start_a, view_page_ctm);
   start_b = fz_transform_point(start_b, view_page_ctm);
   a_grab = fz_make_irect(start_a.x, start_a.y, start_a.x, start_a.y);
   b_grab = fz_make_irect(start_b.x, start_b.y, start_b.x, start_b.y);
   a_grab = fz_expand_irect(a_grab, 10);
   b_grab = fz_expand_irect(b_grab, 10);
   state = EL_NONE;
   if (ui_mouse_inside(a_grab)) state |= EL_A;
   if (ui_mouse_inside(b_grab)) state |= EL_B;
   if (!state) state = EL_MOVE;
  }
 }

 if (ui.active == selected_annot && state != 0)
 {
  a = start_a;
  b = start_b;
  if (state & EL_A) { a.x += (ui.x - ui.down_x); a.y += (ui.y - ui.down_y); }
  if (state & EL_B) { b.x += (ui.x - ui.down_x); b.y += (ui.y - ui.down_y); }

  glBegin(GL_LINES);
  glColor4f(1, 0, 0, 1);
  glVertex2f(a.x, a.y);
  glVertex2f(b.x, b.y);
  glEnd();

  rect->x0 = fz_min(a.x, b.x);
  rect->y0 = fz_min(a.y, b.y);
  rect->x1 = fz_max(a.x, b.x);
  rect->y1 = fz_max(a.y, b.y);
  lw = pdf_annot_border(ctx, selected_annot);
  *rect = fz_expand_rect(*rect, fz_matrix_expansion(view_page_ctm) * lw);


  if (ui.right)
   state = EL_NONE;


  if (!ui.down)
  {
   state = EL_NONE;
   if (points_differ(start_a, a, 1) || points_differ(start_b, b, 1))
   {
    a = fz_transform_point(a, view_page_inv_ctm);
    b = fz_transform_point(b, view_page_inv_ctm);
    pdf_set_annot_line(ctx, selected_annot, a, b);
   }
  }
 }
}
