
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor_priv; int * sensor; } ;


 int kfree (int ) ;
 int ov9650_stop (struct sd*) ;

void ov9650_disconnect(struct sd *sd)
{
 ov9650_stop(sd);

 sd->sensor = ((void*)0);
 kfree(sd->sensor_priv);
}
