
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* xcb_window_t ;
struct TYPE_14__ {int height; int width; int root; } ;
typedef TYPE_6__ xcb_get_geometry_reply_t ;
typedef int xcb_connection_t ;
typedef int xcb_colormap_t ;
typedef int uint32_t ;
struct TYPE_11__ {void* id; } ;
struct TYPE_12__ {TYPE_3__ window; } ;
struct gs_swap_chain {TYPE_5__* wi; TYPE_4__ info; TYPE_2__* device; } ;
struct TYPE_13__ {void* window; int config; } ;
struct TYPE_10__ {TYPE_1__* plat; } ;
struct TYPE_9__ {int * display; } ;
typedef int GLXFBConfig ;
typedef int Display ;


 int GLX_VISUAL_ID ;
 int LOG_ERROR ;
 int XCB_COLORMAP_ALLOC_NONE ;
 int XCB_CW_BORDER_PIXEL ;
 int XCB_CW_COLORMAP ;
 int XFree (int *) ;
 int * XGetXCBConnection (int *) ;
 int blog (int ,char*) ;
 int ctx_visual_attribs ;
 int free (TYPE_6__*) ;
 int get_screen_num_from_root (int *,int ) ;
 TYPE_6__* get_window_geometry (int *,void*) ;
 int * glXChooseFBConfig (int *,int,int ,int*) ;
 int glXGetFBConfigAttrib (int *,int ,int ,int*) ;
 int xcb_create_colormap (int *,int ,int,void*,int) ;
 int xcb_create_window (int *,int,void*,void*,int ,int ,int ,int ,int ,int ,int,int,int*) ;
 void* xcb_generate_id (int *) ;
 int xcb_map_window (int *,void*) ;

extern bool gl_platform_init_swapchain(struct gs_swap_chain *swap)
{
 Display *display = swap->device->plat->display;
 xcb_connection_t *xcb_conn = XGetXCBConnection(display);
 xcb_window_t wid = xcb_generate_id(xcb_conn);
 xcb_window_t parent = swap->info.window.id;
 xcb_get_geometry_reply_t *geometry =
  get_window_geometry(xcb_conn, parent);
 bool status = 0;

 int screen_num;
 int visual;
 GLXFBConfig *fb_config;

 if (!geometry)
  goto fail_geometry_request;

 screen_num = get_screen_num_from_root(xcb_conn, geometry->root);
 if (screen_num == -1) {
  goto fail_screen;
 }


 {
  int num_configs;
  fb_config = glXChooseFBConfig(display, screen_num,
           ctx_visual_attribs, &num_configs);

  if (!fb_config || !num_configs) {
   blog(LOG_ERROR, "Failed to find FBConfig!");
   goto fail_fb_config;
  }
 }


 {
  int error = glXGetFBConfigAttrib(display, fb_config[0],
       GLX_VISUAL_ID, &visual);

  if (error) {
   blog(LOG_ERROR, "Bad call to GetFBConfigAttrib!");
   goto fail_visual_id;
  }
 }

 xcb_colormap_t colormap = xcb_generate_id(xcb_conn);
 uint32_t mask = XCB_CW_BORDER_PIXEL | XCB_CW_COLORMAP;
 uint32_t mask_values[] = {0, colormap, 0};

 xcb_create_colormap(xcb_conn, XCB_COLORMAP_ALLOC_NONE, colormap, parent,
       visual);

 xcb_create_window(xcb_conn, 24 , wid, parent, 0, 0,
     geometry->width, geometry->height, 0, 0, visual, mask,
     mask_values);

 swap->wi->config = fb_config[0];
 swap->wi->window = wid;

 xcb_map_window(xcb_conn, wid);

 XFree(fb_config);
 status = 1;
 goto success;

fail_visual_id:
 XFree(fb_config);
fail_fb_config:
fail_screen:
fail_geometry_request:
success:
 free(geometry);
 return status;
}
