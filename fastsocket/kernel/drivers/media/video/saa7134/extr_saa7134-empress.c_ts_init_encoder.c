
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7134_dev {int board; int empress_started; } ;





 int core ;
 int init ;
 int saa_call_all (struct saa7134_dev*,int ,int ,int) ;
 int ts_reset_encoder (struct saa7134_dev*) ;

__attribute__((used)) static int ts_init_encoder(struct saa7134_dev* dev)
{
 u32 leading_null_bytes = 0;



 switch (dev->board) {
 case 130:
 case 129:
 case 128:
  leading_null_bytes = 1;
  break;
 }
 ts_reset_encoder(dev);
 saa_call_all(dev, core, init, leading_null_bytes);
 dev->empress_started = 1;
 return 0;
}
