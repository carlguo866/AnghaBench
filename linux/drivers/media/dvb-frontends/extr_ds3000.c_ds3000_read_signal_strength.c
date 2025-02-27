
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* get_rf_strength ) (struct dvb_frontend*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; } ;


 int stub1 (struct dvb_frontend*,int *) ;

__attribute__((used)) static int ds3000_read_signal_strength(struct dvb_frontend *fe,
      u16 *signal_strength)
{
 if (fe->ops.tuner_ops.get_rf_strength)
  fe->ops.tuner_ops.get_rf_strength(fe, signal_strength);

 return 0;
}
