
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_seat {int wlr_seat; struct seatop_resize_tiling_event* seatop_data; int * seatop_impl; TYPE_2__* cursor; } ;
struct sway_container {int dummy; } ;
struct seatop_resize_tiling_event {int edge; int edge_x; int edge_y; TYPE_4__* v_con; int v_con_orig_height; struct sway_container* con; TYPE_3__* h_con; int h_con_orig_width; int ref_ly; int ref_lx; } ;
typedef enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
struct TYPE_8__ {int height; } ;
struct TYPE_7__ {int width; } ;
struct TYPE_6__ {TYPE_1__* cursor; } ;
struct TYPE_5__ {int y; int x; } ;


 int WLR_EDGE_BOTTOM ;
 int WLR_EDGE_LEFT ;
 int WLR_EDGE_RIGHT ;
 int WLR_EDGE_TOP ;
 struct seatop_resize_tiling_event* calloc (int,int) ;
 void* container_find_resize_parent (struct sway_container*,int) ;
 int seatop_end (struct sway_seat*) ;
 int seatop_impl ;
 int wlr_seat_pointer_clear_focus (int ) ;

void seatop_begin_resize_tiling(struct sway_seat *seat,
  struct sway_container *con, enum wlr_edges edge) {
 seatop_end(seat);

 struct seatop_resize_tiling_event *e =
  calloc(1, sizeof(struct seatop_resize_tiling_event));
 if (!e) {
  return;
 }
 e->con = con;
 e->edge = edge;

 e->ref_lx = seat->cursor->cursor->x;
 e->ref_ly = seat->cursor->cursor->y;

 if (edge & (WLR_EDGE_LEFT | WLR_EDGE_RIGHT)) {
  e->edge_x = edge & (WLR_EDGE_LEFT | WLR_EDGE_RIGHT);
  e->h_con = container_find_resize_parent(e->con, e->edge_x);

  if (e->h_con) {
   e->h_con_orig_width = e->h_con->width;
  }
 }
 if (edge & (WLR_EDGE_TOP | WLR_EDGE_BOTTOM)) {
  e->edge_y = edge & (WLR_EDGE_TOP | WLR_EDGE_BOTTOM);
  e->v_con = container_find_resize_parent(e->con, e->edge_y);

  if (e->v_con) {
   e->v_con_orig_height = e->v_con->height;
  }
 }

 seat->seatop_impl = &seatop_impl;
 seat->seatop_data = e;

 wlr_seat_pointer_clear_focus(seat->wlr_seat);
}
