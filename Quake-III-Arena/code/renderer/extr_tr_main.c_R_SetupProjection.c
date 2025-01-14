
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {float value; } ;
struct TYPE_6__ {float zFar; int* projectionMatrix; } ;
struct TYPE_5__ {float fov_y; float fov_x; } ;
struct TYPE_7__ {TYPE_2__ viewParms; TYPE_1__ refdef; } ;


 float M_PI ;
 int SetFarClip () ;
 TYPE_4__* r_znear ;
 float tan (float) ;
 TYPE_3__ tr ;

void R_SetupProjection( void ) {
 float xmin, xmax, ymin, ymax;
 float width, height, depth;
 float zNear, zFar;


 SetFarClip();




 zNear = r_znear->value;
 zFar = tr.viewParms.zFar;

 ymax = zNear * tan( tr.refdef.fov_y * M_PI / 360.0f );
 ymin = -ymax;

 xmax = zNear * tan( tr.refdef.fov_x * M_PI / 360.0f );
 xmin = -xmax;

 width = xmax - xmin;
 height = ymax - ymin;
 depth = zFar - zNear;

 tr.viewParms.projectionMatrix[0] = 2 * zNear / width;
 tr.viewParms.projectionMatrix[4] = 0;
 tr.viewParms.projectionMatrix[8] = ( xmax + xmin ) / width;
 tr.viewParms.projectionMatrix[12] = 0;

 tr.viewParms.projectionMatrix[1] = 0;
 tr.viewParms.projectionMatrix[5] = 2 * zNear / height;
 tr.viewParms.projectionMatrix[9] = ( ymax + ymin ) / height;
 tr.viewParms.projectionMatrix[13] = 0;

 tr.viewParms.projectionMatrix[2] = 0;
 tr.viewParms.projectionMatrix[6] = 0;
 tr.viewParms.projectionMatrix[10] = -( zFar + zNear ) / depth;
 tr.viewParms.projectionMatrix[14] = -2 * zFar * zNear / depth;

 tr.viewParms.projectionMatrix[3] = 0;
 tr.viewParms.projectionMatrix[7] = 0;
 tr.viewParms.projectionMatrix[11] = -1;
 tr.viewParms.projectionMatrix[15] = 0;
}
