
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wl_shm_pool {int dummy; } ;
struct TYPE_9__ {int width; int height; int xhot; int yhot; int buffer; } ;
struct TYPE_10__ {TYPE_2__ wl; } ;
typedef TYPE_3__ _GLFWcursor ;
struct TYPE_8__ {int shm; } ;
struct TYPE_12__ {TYPE_1__ wl; } ;
struct TYPE_11__ {int width; int height; scalar_t__ pixels; } ;
typedef TYPE_4__ GLFWimage ;


 int GLFW_PLATFORM_ERROR ;
 int GL_FALSE ;
 int GL_TRUE ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int WL_SHM_FORMAT_ARGB8888 ;
 TYPE_7__ _glfw ;
 int _glfwInputError (int ,char*,...) ;
 int close (int) ;
 int createAnonymousFile (int) ;
 void* mmap (int *,int,int,int ,int,int ) ;
 int munmap (void*,int) ;
 struct wl_shm_pool* wl_shm_create_pool (int ,int,int) ;
 int wl_shm_pool_create_buffer (struct wl_shm_pool*,int ,int,int,int,int ) ;
 int wl_shm_pool_destroy (struct wl_shm_pool*) ;

int _glfwPlatformCreateCursor(_GLFWcursor* cursor,
                              const GLFWimage* image,
                              int xhot, int yhot)
{
    struct wl_shm_pool* pool;
    int stride = image->width * 4;
    int length = image->width * image->height * 4;
    void* data;
    int fd, i;

    fd = createAnonymousFile(length);
    if (fd < 0)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Creating a buffer file for %d B failed: %m\n",
                        length);
        return GL_FALSE;
    }

    data = mmap(((void*)0), length, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (data == MAP_FAILED)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Cursor mmap failed: %m\n");
        close(fd);
        return GL_FALSE;
    }

    pool = wl_shm_create_pool(_glfw.wl.shm, fd, length);

    close(fd);
    unsigned char* source = (unsigned char*) image->pixels;
    unsigned char* target = data;
    for (i = 0; i < image->width * image->height; i++, source += 4)
    {
        *target++ = source[2];
        *target++ = source[1];
        *target++ = source[0];
        *target++ = source[3];
    }

    cursor->wl.buffer =
        wl_shm_pool_create_buffer(pool, 0,
                                  image->width,
                                  image->height,
                                  stride, WL_SHM_FORMAT_ARGB8888);
    munmap(data, length);
    wl_shm_pool_destroy(pool);

    cursor->wl.width = image->width;
    cursor->wl.height = image->height;
    cursor->wl.xhot = xhot;
    cursor->wl.yhot = yhot;
    return GL_TRUE;
}
