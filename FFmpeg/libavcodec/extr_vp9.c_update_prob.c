
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int VP56RangeCoder ;


 int FF_ARRAY_ELEMS (int const*) ;
 int av_assert2 (int) ;
 int inv_recenter_nonneg (int const,int) ;
 int vp8_rac_get (int *) ;
 int vp8_rac_get_uint (int *,int) ;

__attribute__((used)) static int update_prob(VP56RangeCoder *c, int p)
{
    static const uint8_t inv_map_table[255] = {
          7, 20, 33, 46, 59, 72, 85, 98, 111, 124, 137, 150, 163, 176,
        189, 202, 215, 228, 241, 254, 1, 2, 3, 4, 5, 6, 8, 9,
         10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23, 24,
         25, 26, 27, 28, 29, 30, 31, 32, 34, 35, 36, 37, 38, 39,
         40, 41, 42, 43, 44, 45, 47, 48, 49, 50, 51, 52, 53, 54,
         55, 56, 57, 58, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
         70, 71, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84,
         86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 99, 100,
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115,
        116, 117, 118, 119, 120, 121, 122, 123, 125, 126, 127, 128, 129, 130,
        131, 132, 133, 134, 135, 136, 138, 139, 140, 141, 142, 143, 144, 145,
        146, 147, 148, 149, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160,
        161, 162, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175,
        177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 190, 191,
        192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 203, 204, 205, 206,
        207, 208, 209, 210, 211, 212, 213, 214, 216, 217, 218, 219, 220, 221,
        222, 223, 224, 225, 226, 227, 229, 230, 231, 232, 233, 234, 235, 236,
        237, 238, 239, 240, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251,
        252, 253, 253,
    };
    int d;
    if (!vp8_rac_get(c)) {
        d = vp8_rac_get_uint(c, 4) + 0;
    } else if (!vp8_rac_get(c)) {
        d = vp8_rac_get_uint(c, 4) + 16;
    } else if (!vp8_rac_get(c)) {
        d = vp8_rac_get_uint(c, 5) + 32;
    } else {
        d = vp8_rac_get_uint(c, 7);
        if (d >= 65)
            d = (d << 1) - 65 + vp8_rac_get(c);
        d += 64;
        av_assert2(d < FF_ARRAY_ELEMS(inv_map_table));
    }

    return p <= 128 ? 1 + inv_recenter_nonneg(inv_map_table[d], p - 1) :
                    255 - inv_recenter_nonneg(inv_map_table[d], 255 - p);
}
