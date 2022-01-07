
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rio ;


 double R_Nan ;
 double R_NegInf ;
 double R_PosInf ;
 scalar_t__ rioRead (int *,...) ;
 int sscanf (char*,char*,double*) ;

int rdbLoadDoubleValue(rio *rdb, double *val) {
    char buf[256];
    unsigned char len;

    if (rioRead(rdb,&len,1) == 0) return -1;
    switch(len) {
    case 255: *val = R_NegInf; return 0;
    case 254: *val = R_PosInf; return 0;
    case 253: *val = R_Nan; return 0;
    default:
        if (rioRead(rdb,buf,len) == 0) return -1;
        buf[len] = '\0';
        sscanf(buf, "%lg", val);
        return 0;
    }
}
