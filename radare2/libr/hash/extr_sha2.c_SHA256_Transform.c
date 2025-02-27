
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_3__ {scalar_t__* state; scalar_t__ buffer; } ;
typedef TYPE_1__ R_SHA256_CTX ;


 scalar_t__ Ch (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__* K256 ;
 scalar_t__ Maj (scalar_t__,scalar_t__,scalar_t__) ;
 int REVERSE32 (int ,scalar_t__) ;
 scalar_t__ Sigma0_256 (scalar_t__) ;
 scalar_t__ Sigma1_256 (scalar_t__) ;
 scalar_t__ sigma0_256 (scalar_t__) ;
 scalar_t__ sigma1_256 (scalar_t__) ;

void SHA256_Transform(R_SHA256_CTX *context, const ut32 *data) {
 ut32 a, b, c, d, e, f, g, h, s0, s1;
 ut32 T1, T2, *W256;
 int j;

 W256 = (ut32 *) context->buffer;


 a = context->state[0];
 b = context->state[1];
 c = context->state[2];
 d = context->state[3];
 e = context->state[4];
 f = context->state[5];
 g = context->state[6];
 h = context->state[7];

 j = 0;
 do {


  REVERSE32 (*data++, W256[j]);

  T1 = h + Sigma1_256 (e) + Ch (e, f, g) + K256[j] + W256[j];




  T2 = Sigma0_256 (a) + Maj (a, b, c);
  h = g;
  g = f;
  f = e;
  e = d + T1;
  d = c;
  c = b;
  b = a;
  a = T1 + T2;

  j++;
 } while (j < 16);

 do {

  s0 = W256[(j + 1) & 0x0f];
  s0 = sigma0_256 (s0);
  s1 = W256[(j + 14) & 0x0f];
  s1 = sigma1_256 (s1);


  T1 = h + Sigma1_256 (e) + Ch (e, f, g) + K256[j] +
  (W256[j & 0x0f] += s1 + W256[(j + 9) & 0x0f] + s0);
  T2 = Sigma0_256 (a) + Maj (a, b, c);
  h = g;
  g = f;
  f = e;
  e = d + T1;
  d = c;
  c = b;
  b = a;
  a = T1 + T2;

  j++;
 } while (j < 64);


 context->state[0] += a;
 context->state[1] += b;
 context->state[2] += c;
 context->state[3] += d;
 context->state[4] += e;
 context->state[5] += f;
 context->state[6] += g;
 context->state[7] += h;


 a = b = c = d = e = f = g = h = T1 = T2 = 0;
}
