
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * custom_cursor; int conf; } ;
struct TYPE_12__ {TYPE_2__ mir; } ;
typedef TYPE_3__ _GLFWcursor ;
struct TYPE_10__ {int connection; } ;
struct TYPE_15__ {TYPE_1__ mir; } ;
struct TYPE_14__ {int width; int height; unsigned char* pixels; } ;
struct TYPE_13__ {char* vaddr; int stride; } ;
typedef scalar_t__ MirPixelFormat ;
typedef TYPE_4__ MirGraphicsRegion ;
typedef int MirBufferStream ;
typedef TYPE_5__ GLFWimage ;


 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 TYPE_9__ _glfw ;
 int _glfwInputError (int ,char*) ;
 scalar_t__ findValidPixelFormat () ;
 int memcpy (char*,unsigned char*,int) ;
 int mir_buffer_stream_get_graphics_region (int *,TYPE_4__*) ;
 int mir_buffer_usage_software ;
 int * mir_connection_create_buffer_stream_sync (int ,int,int,scalar_t__,int ) ;
 int mir_cursor_configuration_from_buffer_stream (int *,int,int) ;
 scalar_t__ mir_pixel_format_invalid ;

int _glfwPlatformCreateCursor(_GLFWcursor* cursor,
                              const GLFWimage* image,
                              int xhot, int yhot)
{
    MirBufferStream* stream;
    MirPixelFormat pixel_format = findValidPixelFormat();

    int i_w = image->width;
    int i_h = image->height;

    if (pixel_format == mir_pixel_format_invalid)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Mir: Unable to find a correct pixel format");
        return GL_FALSE;
    }

    stream = mir_connection_create_buffer_stream_sync(_glfw.mir.connection,
                                                      i_w, i_h,
                                                      pixel_format,
                                                      mir_buffer_usage_software);

    cursor->mir.conf = mir_cursor_configuration_from_buffer_stream(stream, xhot, yhot);

    char* dest;
    unsigned char *pixels;
    int i, r_stride, bytes_per_pixel, bytes_per_row;

    MirGraphicsRegion region;
    mir_buffer_stream_get_graphics_region(stream, &region);


    bytes_per_pixel = 4;
    bytes_per_row = bytes_per_pixel * i_w;

    dest = region.vaddr;
    pixels = image->pixels;

    r_stride = region.stride;

    for (i = 0; i < i_h; i++)
    {
        memcpy(dest, pixels, bytes_per_row);
        dest += r_stride;
        pixels += r_stride;
    }

    cursor->mir.custom_cursor = stream;

    return GL_TRUE;
}
