
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isInstanceError; } ;
typedef TYPE_1__ tjinstance ;
typedef scalar_t__ tjhandle ;


 int FALSE ;
 int NUMSUBOPT ;
 int PAD (int,int) ;
 int TJSAMP_GRAY ;
 int _throw (char*) ;
 int _throwg (char*) ;
 int isPow2 (int) ;
 int tjEncodeYUVPlanes (scalar_t__,unsigned char const*,int,int,int,int,unsigned char**,int*,int,int) ;
 int tjPlaneHeight (int,int,int) ;
 int tjPlaneWidth (int,int,int) ;

int tjEncodeYUV3(tjhandle handle, const unsigned char *srcBuf,
                           int width, int pitch, int height, int pixelFormat,
                           unsigned char *dstBuf, int pad, int subsamp,
                           int flags)
{
 unsigned char *dstPlanes[3];
 int pw0, ph0, strides[3], retval=-1;
  tjinstance *this = (tjinstance *)handle;

  if (!this) _throwg("tjEncodeYUV3(): Invalid handle");
  this->isInstanceError = FALSE;

  if (width <= 0 || height <= 0 || dstBuf == ((void*)0) || pad < 0 || !isPow2(pad) ||
      subsamp < 0 || subsamp >= NUMSUBOPT)
  _throw("tjEncodeYUV3(): Invalid argument");

 pw0=tjPlaneWidth(0, width, subsamp);
 ph0=tjPlaneHeight(0, height, subsamp);
 dstPlanes[0]=dstBuf;
 strides[0]=PAD(pw0, pad);
  if (subsamp == TJSAMP_GRAY) {
  strides[1]=strides[2]=0;
  dstPlanes[1]=dstPlanes[2]=((void*)0);
  } else {
  int pw1=tjPlaneWidth(1, width, subsamp);
  int ph1=tjPlaneHeight(1, height, subsamp);

  strides[1]=strides[2]=PAD(pw1, pad);
  dstPlanes[1]=dstPlanes[0]+strides[0]*ph0;
  dstPlanes[2]=dstPlanes[1]+strides[1]*ph1;
 }

 return tjEncodeYUVPlanes(handle, srcBuf, width, pitch, height, pixelFormat,
  dstPlanes, strides, subsamp, flags);

 bailout:
 return retval;
}
