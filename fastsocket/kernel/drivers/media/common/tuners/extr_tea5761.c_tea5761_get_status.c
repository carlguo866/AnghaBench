
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;


 int TUNER_STATUS_LOCKED ;
 int TUNER_STATUS_STEREO ;
 scalar_t__ tea5761_read_status (struct dvb_frontend*,unsigned char*) ;
 scalar_t__ tea5761_signal (struct dvb_frontend*,unsigned char*) ;
 scalar_t__ tea5761_stereo (struct dvb_frontend*,unsigned char*) ;

__attribute__((used)) static int tea5761_get_status(struct dvb_frontend *fe, u32 *status)
{
 unsigned char buffer[16];

 *status = 0;

 if (0 == tea5761_read_status(fe, buffer)) {
  if (tea5761_signal(fe, buffer))
   *status = TUNER_STATUS_LOCKED;
  if (tea5761_stereo(fe, buffer))
   *status |= TUNER_STATUS_STEREO;
 }

 return 0;
}
