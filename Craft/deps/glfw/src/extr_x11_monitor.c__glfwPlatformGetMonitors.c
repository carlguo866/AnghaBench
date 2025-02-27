
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_14__ ;


struct TYPE_29__ {scalar_t__ output; int index; int crtc; } ;
struct TYPE_32__ {TYPE_2__ x11; } ;
typedef TYPE_5__ _GLFWmonitor ;
struct TYPE_33__ {scalar_t__ x_org; scalar_t__ y_org; scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_6__ XineramaScreenInfo ;
struct TYPE_34__ {int noutput; int ncrtc; int * crtcs; } ;
typedef TYPE_7__ XRRScreenResources ;
struct TYPE_35__ {scalar_t__ connection; int mm_height; int mm_width; char* name; int crtc; } ;
typedef TYPE_8__ XRROutputInfo ;
struct TYPE_36__ {int noutput; scalar_t__* outputs; scalar_t__ rotation; scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_9__ XRRCrtcInfo ;
struct TYPE_30__ {int monitorBroken; scalar_t__ available; } ;
struct TYPE_28__ {scalar_t__ available; } ;
struct TYPE_31__ {int screen; int display; TYPE_3__ randr; TYPE_1__ xinerama; int root; } ;
struct TYPE_27__ {TYPE_4__ x11; } ;
typedef scalar_t__ RROutput ;


 int DisplayHeightMM (int ,int ) ;
 int DisplayWidthMM (int ,int ) ;
 int GLFW_PLATFORM_ERROR ;
 int GL_TRUE ;
 scalar_t__ RR_Connected ;
 scalar_t__ RR_Rotate_270 ;
 scalar_t__ RR_Rotate_90 ;
 int XFree (TYPE_6__*) ;
 int XRRFreeCrtcInfo (TYPE_9__*) ;
 int XRRFreeOutputInfo (TYPE_8__*) ;
 int XRRFreeScreenResources (TYPE_7__*) ;
 TYPE_9__* XRRGetCrtcInfo (int ,TYPE_7__*,int ) ;
 TYPE_8__* XRRGetOutputInfo (int ,TYPE_7__*,scalar_t__) ;
 scalar_t__ XRRGetOutputPrimary (int ,int ) ;
 TYPE_7__* XRRGetScreenResources (int ,int ) ;
 TYPE_6__* XineramaQueryScreens (int ,int*) ;
 int _GLFW_SWAP_POINTERS (TYPE_5__*,TYPE_5__*) ;
 TYPE_14__ _glfw ;
 TYPE_5__* _glfwAllocMonitor (char*,int,int) ;
 int _glfwInputError (int ,char*) ;
 TYPE_5__** calloc (int,int) ;
 int free (TYPE_5__**) ;

_GLFWmonitor** _glfwPlatformGetMonitors(int* count)
{
    int i, j, k, found = 0;
    _GLFWmonitor** monitors = ((void*)0);

    *count = 0;

    if (_glfw.x11.randr.available)
    {
        int screenCount = 0;
        XineramaScreenInfo* screens = ((void*)0);
        XRRScreenResources* sr = XRRGetScreenResources(_glfw.x11.display,
                                                       _glfw.x11.root);
        RROutput primary = XRRGetOutputPrimary(_glfw.x11.display,
                                               _glfw.x11.root);

        monitors = calloc(sr->noutput, sizeof(_GLFWmonitor*));

        if (_glfw.x11.xinerama.available)
            screens = XineramaQueryScreens(_glfw.x11.display, &screenCount);

        for (i = 0; i < sr->ncrtc; i++)
        {
            XRRCrtcInfo* ci = XRRGetCrtcInfo(_glfw.x11.display,
                                             sr, sr->crtcs[i]);

            for (j = 0; j < ci->noutput; j++)
            {
                int widthMM, heightMM;
                _GLFWmonitor* monitor;
                XRROutputInfo* oi = XRRGetOutputInfo(_glfw.x11.display,
                                                     sr, ci->outputs[j]);
                if (oi->connection != RR_Connected)
                {
                    XRRFreeOutputInfo(oi);
                    continue;
                }

                if (ci->rotation == RR_Rotate_90 || ci->rotation == RR_Rotate_270)
                {
                    widthMM = oi->mm_height;
                    heightMM = oi->mm_width;
                }
                else
                {
                    widthMM = oi->mm_width;
                    heightMM = oi->mm_height;
                }

                monitor = _glfwAllocMonitor(oi->name, widthMM, heightMM);
                monitor->x11.output = ci->outputs[j];
                monitor->x11.crtc = oi->crtc;

                for (k = 0; k < screenCount; k++)
                {
                    if (screens[k].x_org == ci->x &&
                        screens[k].y_org == ci->y &&
                        screens[k].width == ci->width &&
                        screens[k].height == ci->height)
                    {
                        monitor->x11.index = k;
                        break;
                    }
                }

                XRRFreeOutputInfo(oi);

                found++;
                monitors[found - 1] = monitor;

                if (ci->outputs[j] == primary)
                    _GLFW_SWAP_POINTERS(monitors[0], monitors[found - 1]);
            }

            XRRFreeCrtcInfo(ci);
        }

        XRRFreeScreenResources(sr);

        if (screens)
            XFree(screens);

        if (found == 0)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "X11: RandR monitor support seems broken");

            _glfw.x11.randr.monitorBroken = GL_TRUE;
            free(monitors);
            monitors = ((void*)0);
        }
    }

    if (!monitors)
    {
        monitors = calloc(1, sizeof(_GLFWmonitor*));
        monitors[0] = _glfwAllocMonitor("Display",
                                        DisplayWidthMM(_glfw.x11.display,
                                                       _glfw.x11.screen),
                                        DisplayHeightMM(_glfw.x11.display,
                                                        _glfw.x11.screen));
        found = 1;
    }

    *count = found;
    return monitors;
}
