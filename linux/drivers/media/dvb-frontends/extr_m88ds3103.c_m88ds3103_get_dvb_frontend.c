
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
struct m88ds3103_dev {struct dvb_frontend fe; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct m88ds3103_dev* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static struct dvb_frontend *m88ds3103_get_dvb_frontend(struct i2c_client *client)
{
 struct m88ds3103_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 return &dev->fe;
}
