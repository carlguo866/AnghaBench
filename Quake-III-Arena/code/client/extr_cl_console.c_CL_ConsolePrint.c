
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* qboolean ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {scalar_t__ realtime; } ;
struct TYPE_4__ {float* color; int linewidth; int x; int current; int totallines; int* text; scalar_t__* times; void* initialized; } ;


 char COLOR_WHITE ;
 int ColorIndex (char) ;
 int Con_CheckResize () ;
 int Con_Linefeed (void*) ;
 int NUM_CON_TIMES ;
 scalar_t__ Q_IsColorString (char*) ;
 int Q_strncmp (char*,char*,int) ;
 TYPE_3__* cl_noprint ;
 TYPE_2__ cls ;
 TYPE_1__ con ;
 void* qfalse ;
 void* qtrue ;

void CL_ConsolePrint( char *txt ) {
 int y;
 int c, l;
 int color;
 qboolean skipnotify = qfalse;
 int prev;



 if ( !Q_strncmp( txt, "[skipnotify]", 12 ) ) {
  skipnotify = qtrue;
  txt += 12;
 }


 if ( cl_noprint && cl_noprint->integer ) {
  return;
 }

 if (!con.initialized) {
  con.color[0] =
  con.color[1] =
  con.color[2] =
  con.color[3] = 1.0f;
  con.linewidth = -1;
  Con_CheckResize ();
  con.initialized = qtrue;
 }

 color = ColorIndex(COLOR_WHITE);

 while ( (c = *txt) != 0 ) {
  if ( Q_IsColorString( txt ) ) {
   color = ColorIndex( *(txt+1) );
   txt += 2;
   continue;
  }


  for (l=0 ; l< con.linewidth ; l++) {
   if ( txt[l] <= ' ') {
    break;
   }

  }


  if (l != con.linewidth && (con.x + l >= con.linewidth) ) {
   Con_Linefeed(skipnotify);

  }

  txt++;

  switch (c)
  {
  case '\n':
   Con_Linefeed (skipnotify);
   break;
  case '\r':
   con.x = 0;
   break;
  default:
   y = con.current % con.totallines;
   con.text[y*con.linewidth+con.x] = (color << 8) | c;
   con.x++;
   if (con.x >= con.linewidth) {
    Con_Linefeed(skipnotify);
    con.x = 0;
   }
   break;
  }
 }



 if (con.current >= 0) {

  if ( skipnotify ) {
   prev = con.current % NUM_CON_TIMES - 1;
   if ( prev < 0 )
    prev = NUM_CON_TIMES - 1;
   con.times[prev] = 0;
  }
  else

   con.times[con.current % NUM_CON_TIMES] = cls.realtime;
 }
}
