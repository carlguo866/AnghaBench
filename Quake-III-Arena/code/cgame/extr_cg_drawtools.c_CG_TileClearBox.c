
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qhandle_t ;


 int trap_R_DrawStretchPic (int,int,int,int,float,float,float,float,int ) ;

__attribute__((used)) static void CG_TileClearBox( int x, int y, int w, int h, qhandle_t hShader ) {
 float s1, t1, s2, t2;

 s1 = x/64.0;
 t1 = y/64.0;
 s2 = (x+w)/64.0;
 t2 = (y+h)/64.0;
 trap_R_DrawStretchPic( x, y, w, h, s1, t1, s2, t2, hShader );
}
