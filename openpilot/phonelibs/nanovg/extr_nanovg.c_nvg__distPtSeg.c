
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float nvg__distPtSeg(float x, float y, float px, float py, float qx, float qy)
{
 float pqx, pqy, dx, dy, d, t;
 pqx = qx-px;
 pqy = qy-py;
 dx = x-px;
 dy = y-py;
 d = pqx*pqx + pqy*pqy;
 t = pqx*dx + pqy*dy;
 if (d > 0) t /= d;
 if (t < 0) t = 0;
 else if (t > 1) t = 1;
 dx = px + t*pqx - x;
 dy = py + t*pqy - y;
 return dx*dx + dy*dy;
}
