
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dvb_frontend {int dummy; } ;



__attribute__((used)) static int e4000_dvb_get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 *frequency = 0;
 return 0;
}
