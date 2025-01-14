
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int i_x_offset; int i_y_offset; int i_visible_height; int i_visible_width; } ;
struct TYPE_17__ {TYPE_5__ fmt; TYPE_7__* sys; } ;
typedef TYPE_6__ vout_display_t ;
struct TYPE_18__ {int active_buffers; int display_height; int display_width; int * viewport; int shm; TYPE_3__* embed; } ;
typedef TYPE_7__ vout_display_sys_t ;
typedef int vlc_tick_t ;
typedef int subpicture_t ;
struct wl_surface {int dummy; } ;
struct wl_shm_pool {int dummy; } ;
struct wl_display {int dummy; } ;
struct wl_buffer {int dummy; } ;
struct picture_buffer_t {int fd; scalar_t__ offset; } ;
struct buffer_data {int * counter; TYPE_8__* picture; } ;
struct TYPE_19__ {TYPE_4__* p; struct picture_buffer_t* p_sys; } ;
typedef TYPE_8__ picture_t ;
typedef scalar_t__ off_t ;
struct TYPE_15__ {size_t i_pitch; size_t const i_lines; } ;
struct TYPE_13__ {struct wl_surface* wl; } ;
struct TYPE_12__ {struct wl_display* wl; } ;
struct TYPE_14__ {TYPE_2__ handle; TYPE_1__ display; } ;


 int VLC_UNUSED (int ) ;
 int WL_SHM_FORMAT_XRGB8888 ;
 int buffer_cbs ;
 int free (struct buffer_data*) ;
 struct buffer_data* malloc (int) ;
 int picture_Hold (TYPE_8__*) ;
 scalar_t__ unlikely (int ) ;
 int wl_buffer_add_listener (struct wl_buffer*,int *,struct buffer_data*) ;
 int wl_display_flush (struct wl_display*) ;
 struct wl_shm_pool* wl_shm_create_pool (int ,int,scalar_t__) ;
 struct wl_buffer* wl_shm_pool_create_buffer (struct wl_shm_pool*,scalar_t__,int ,int ,size_t const,int ) ;
 int wl_shm_pool_destroy (struct wl_shm_pool*) ;
 int wl_surface_attach (struct wl_surface*,struct wl_buffer*,int ,int ) ;
 int wl_surface_damage (struct wl_surface*,int ,int ,int ,int ) ;

__attribute__((used)) static void Prepare(vout_display_t *vd, picture_t *pic, subpicture_t *subpic,
                    vlc_tick_t date)
{
    VLC_UNUSED(date);
    vout_display_sys_t *sys = vd->sys;
    struct wl_display *display = sys->embed->display.wl;
    struct wl_surface *surface = sys->embed->handle.wl;
    struct picture_buffer_t *picbuf = pic->p_sys;

    if (picbuf->fd == -1)
        return;

    struct buffer_data *d = malloc(sizeof (*d));
    if (unlikely(d == ((void*)0)))
        return;

    d->picture = pic;
    d->counter = &sys->active_buffers;

    off_t offset = picbuf->offset;
    const size_t stride = pic->p->i_pitch;
    const size_t size = pic->p->i_lines * stride;
    struct wl_shm_pool *pool;
    struct wl_buffer *buf;

    pool = wl_shm_create_pool(sys->shm, picbuf->fd, offset + size);
    if (pool == ((void*)0))
    {
        free(d);
        return;
    }

    if (sys->viewport == ((void*)0))
        offset += 4 * vd->fmt.i_x_offset
                  + pic->p->i_pitch * vd->fmt.i_y_offset;

    buf = wl_shm_pool_create_buffer(pool, offset, vd->fmt.i_visible_width,
                                    vd->fmt.i_visible_height, stride,
                                    WL_SHM_FORMAT_XRGB8888);
    wl_shm_pool_destroy(pool);
    if (buf == ((void*)0))
    {
        free(d);
        return;
    }

    picture_Hold(pic);

    wl_buffer_add_listener(buf, &buffer_cbs, d);
    wl_surface_attach(surface, buf, 0, 0);
    wl_surface_damage(surface, 0, 0, sys->display_width, sys->display_height);
    wl_display_flush(display);

    sys->active_buffers++;

    (void) subpic;
}
