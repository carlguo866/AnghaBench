
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DC_128_PRED8x8 ;
 int DC_PRED8x8 ;
 int HOR_PRED8x8 ;
 int LEFT_DC_PRED8x8 ;
 int PLANE_PRED8x8 ;
 int TOP_DC_PRED8x8 ;
 int VERT_PRED8x8 ;

__attribute__((used)) static inline int adjust_pred16(int itype, int up, int left)
{
    if(!up && !left)
        itype = DC_128_PRED8x8;
    else if(!up){
        if(itype == PLANE_PRED8x8)itype = HOR_PRED8x8;
        if(itype == VERT_PRED8x8) itype = HOR_PRED8x8;
        if(itype == DC_PRED8x8) itype = LEFT_DC_PRED8x8;
    }else if(!left){
        if(itype == PLANE_PRED8x8)itype = VERT_PRED8x8;
        if(itype == HOR_PRED8x8) itype = VERT_PRED8x8;
        if(itype == DC_PRED8x8) itype = TOP_DC_PRED8x8;
    }
    return itype;
}
