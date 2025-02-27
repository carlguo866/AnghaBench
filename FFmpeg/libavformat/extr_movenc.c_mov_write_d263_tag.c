
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_d263_tag(AVIOContext *pb)
{
    avio_wb32(pb, 0xf);
    ffio_wfourcc(pb, "d263");
    ffio_wfourcc(pb, "FFMP");
    avio_w8(pb, 0);

    avio_w8(pb, 0xa);
    avio_w8(pb, 0);
    return 0xf;
}
