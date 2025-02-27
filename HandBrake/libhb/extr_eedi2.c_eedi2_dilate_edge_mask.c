
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int eedi2_bit_blit (int*,int,int*,int,int,int) ;

void eedi2_dilate_edge_mask( uint8_t *mskp, int msk_pitch, uint8_t *dstp, int dst_pitch,
                             int dstr, int height, int width )
{
    int x, y;

    eedi2_bit_blit( dstp, dst_pitch, mskp, msk_pitch, width, height );

    mskp += msk_pitch;
    unsigned char *mskpp = mskp - msk_pitch;
    unsigned char *mskpn = mskp + msk_pitch;
    dstp += dst_pitch;
    for( y = 1; y < height - 1; ++y )
    {
        for( x = 1; x < width - 1; ++x )
        {
            if( mskp[x] != 0 )
                continue;

            int count = 0;
            if( mskpp[x-1] == 0xFF ) ++count;
            if( mskpp[x] == 0xFF ) ++count;
            if( mskpp[x+1] == 0xFF ) ++count;
            if( mskp[x-1] == 0xFF ) ++count;
            if( mskp[x+1] == 0xFF ) ++count;
            if( mskpn[x-1] == 0xFF ) ++count;
            if( mskpn[x] == 0xFF ) ++count;
            if( mskpn[x+1] == 0xFF ) ++count;

            if( count >= dstr )
                dstp[x] = 0xFF;
        }
        mskpp += msk_pitch;
        mskp += msk_pitch;
        mskpn += msk_pitch;
        dstp += dst_pitch;
    }
}
