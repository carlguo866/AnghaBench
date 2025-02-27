
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef double vec_t ;
struct TYPE_28__ {int planenum; TYPE_1__* winding; int flags; int texinfo; } ;
typedef TYPE_2__ side_t ;
struct TYPE_29__ {float dist; int normal; } ;
typedef TYPE_3__ plane_t ;
struct TYPE_30__ {int numsides; TYPE_2__* sides; int * maxs; int * mins; int original; } ;
typedef TYPE_4__ bspbrush_t ;


 TYPE_4__* AllocBrush (int) ;
 TYPE_1__* BaseWindingForPlane (int ,float) ;
 int BoundBrush (TYPE_4__*) ;
 int BrushMostlyOnSide (TYPE_4__*,TYPE_3__*) ;
 double BrushVolume (TYPE_4__*) ;
 int ChopWindingInPlace (TYPE_1__**,int ,float,int ) ;
 int ClipWindingEpsilon (TYPE_1__*,int ,float,int ,TYPE_1__**,TYPE_1__**) ;
 TYPE_4__* CopyBrush (TYPE_4__*) ;
 TYPE_1__* CopyWinding (TYPE_1__*) ;
 float DotProduct (int ,int ) ;
 int FreeBrush (TYPE_4__*) ;
 int FreeWinding (TYPE_1__*) ;
 int Log_Write (char*) ;
 int MAX_MAP_BOUNDS ;
 int PSIDE_BACK ;
 int PSIDE_FRONT ;
 int SFL_TESTED ;
 int SFL_VISIBLE ;
 int TEXINFO_NODE ;
 scalar_t__ WindingIsHuge (TYPE_1__*) ;
 scalar_t__ WindingIsTiny (TYPE_1__*) ;
 TYPE_3__* mapplanes ;

void SplitBrush (bspbrush_t *brush, int planenum,
 bspbrush_t **front, bspbrush_t **back)
{
 bspbrush_t *b[2];
 int i, j;
 winding_t *w, *cw[2], *midwinding;
 plane_t *plane, *plane2;
 side_t *s, *cs;
 float d, d_front, d_back;

 *front = *back = ((void*)0);
 plane = &mapplanes[planenum];


 d_front = d_back = 0;
 for (i=0 ; i<brush->numsides ; i++)
 {
  w = brush->sides[i].winding;
  if (!w)
   continue;
  for (j=0 ; j<w->numpoints ; j++)
  {
   d = DotProduct (w->p[j], plane->normal) - plane->dist;
   if (d > 0 && d > d_front)
    d_front = d;
   if (d < 0 && d < d_back)
    d_back = d;
  }
 }

 if (d_front < 0.2)
 {
  *back = CopyBrush (brush);
  return;
 }
 if (d_back > -0.2)
 {
  *front = CopyBrush (brush);
  return;
 }



 w = BaseWindingForPlane (plane->normal, plane->dist);
 for (i=0 ; i<brush->numsides && w ; i++)
 {
  plane2 = &mapplanes[brush->sides[i].planenum ^ 1];
  ChopWindingInPlace (&w, plane2->normal, plane2->dist, 0);
 }

 if (!w || WindingIsTiny(w))
 {
  int side;

  side = BrushMostlyOnSide (brush, plane);
  if (side == PSIDE_FRONT)
   *front = CopyBrush (brush);
  if (side == PSIDE_BACK)
   *back = CopyBrush (brush);

  if (w) FreeWinding(w);
  return;
 }

 if (WindingIsHuge (w))
 {
  Log_Write("WARNING: huge winding\n");
 }

 midwinding = w;



 for (i=0 ; i<2 ; i++)
 {
  b[i] = AllocBrush (brush->numsides+1);
  b[i]->original = brush->original;
 }



 for (i=0 ; i<brush->numsides ; i++)
 {
  s = &brush->sides[i];
  w = s->winding;
  if (!w)
   continue;
  ClipWindingEpsilon (w, plane->normal, plane->dist,
   0 , &cw[0], &cw[1]);
  for (j=0 ; j<2 ; j++)
  {
   if (!cw[j])
    continue;







   cs = &b[j]->sides[b[j]->numsides];
   b[j]->numsides++;
   *cs = *s;



   cs->winding = cw[j];
   cs->flags &= ~SFL_TESTED;
  }
 }




 for (i=0 ; i<2 ; i++)
 {
  BoundBrush (b[i]);
  for (j=0 ; j<3 ; j++)
  {
   if (b[i]->mins[j] < -MAX_MAP_BOUNDS || b[i]->maxs[j] > MAX_MAP_BOUNDS)
   {
    Log_Write("bogus brush after clip");
    break;
   }
  }

  if (b[i]->numsides < 3 || j < 3)
  {
   FreeBrush (b[i]);
   b[i] = ((void*)0);
  }
 }

 if ( !(b[0] && b[1]) )
 {
  if (!b[0] && !b[1])
   Log_Write("split removed brush\r\n");
  else
   Log_Write("split not on both sides\r\n");
  if (b[0])
  {
   FreeBrush (b[0]);
   *front = CopyBrush (brush);
  }
  if (b[1])
  {
   FreeBrush (b[1]);
   *back = CopyBrush (brush);
  }
  return;
 }


 for (i=0 ; i<2 ; i++)
 {
  cs = &b[i]->sides[b[i]->numsides];
  b[i]->numsides++;

  cs->planenum = planenum^i^1;
  cs->texinfo = TEXINFO_NODE;
  cs->flags &= ~SFL_VISIBLE;
  cs->flags &= ~SFL_TESTED;
  if (i==0)
   cs->winding = CopyWinding (midwinding);
  else
   cs->winding = midwinding;
 }

{
 vec_t v1;
 int i;

 for (i = 0; i < 2; i++)
 {
  v1 = BrushVolume (b[i]);
  if (v1 < 1.0)
  {
   FreeBrush(b[i]);
   b[i] = ((void*)0);

  }
 }
 if (!b[0] && !b[1])
 {
  Log_Write("two tiny brushes\r\n");
 }
}

 *front = b[0];
 *back = b[1];
}
