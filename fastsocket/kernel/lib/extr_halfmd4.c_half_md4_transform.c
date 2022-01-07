
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int F ;
 int G ;
 int H ;
 scalar_t__ const K1 ;
 scalar_t__ const K2 ;
 scalar_t__ const K3 ;
 int ROUND (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__ const,int) ;

__u32 half_md4_transform(__u32 buf[4], __u32 const in[8])
{
 __u32 a = buf[0], b = buf[1], c = buf[2], d = buf[3];


 ROUND(F, a, b, c, d, in[0] + K1, 3);
 ROUND(F, d, a, b, c, in[1] + K1, 7);
 ROUND(F, c, d, a, b, in[2] + K1, 11);
 ROUND(F, b, c, d, a, in[3] + K1, 19);
 ROUND(F, a, b, c, d, in[4] + K1, 3);
 ROUND(F, d, a, b, c, in[5] + K1, 7);
 ROUND(F, c, d, a, b, in[6] + K1, 11);
 ROUND(F, b, c, d, a, in[7] + K1, 19);


 ROUND(G, a, b, c, d, in[1] + K2, 3);
 ROUND(G, d, a, b, c, in[3] + K2, 5);
 ROUND(G, c, d, a, b, in[5] + K2, 9);
 ROUND(G, b, c, d, a, in[7] + K2, 13);
 ROUND(G, a, b, c, d, in[0] + K2, 3);
 ROUND(G, d, a, b, c, in[2] + K2, 5);
 ROUND(G, c, d, a, b, in[4] + K2, 9);
 ROUND(G, b, c, d, a, in[6] + K2, 13);


 ROUND(H, a, b, c, d, in[3] + K3, 3);
 ROUND(H, d, a, b, c, in[7] + K3, 9);
 ROUND(H, c, d, a, b, in[2] + K3, 11);
 ROUND(H, b, c, d, a, in[6] + K3, 15);
 ROUND(H, a, b, c, d, in[1] + K3, 3);
 ROUND(H, d, a, b, c, in[5] + K3, 9);
 ROUND(H, c, d, a, b, in[0] + K3, 11);
 ROUND(H, b, c, d, a, in[4] + K3, 15);

 buf[0] += a;
 buf[1] += b;
 buf[2] += c;
 buf[3] += d;

 return buf[1];
}
