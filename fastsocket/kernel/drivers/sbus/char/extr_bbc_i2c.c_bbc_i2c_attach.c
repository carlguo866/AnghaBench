
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_device {int node; } ;
struct bbc_i2c_client {int address; int bus; struct of_device* op; struct bbc_i2c_bus* bp; } ;
struct bbc_i2c_bus {int dummy; } ;


 int GFP_KERNEL ;
 int claim_device (struct bbc_i2c_bus*,struct of_device*) ;
 int kfree (struct bbc_i2c_client*) ;
 struct bbc_i2c_client* kzalloc (int,int ) ;
 int * of_get_property (int ,char*,int *) ;

struct bbc_i2c_client *bbc_i2c_attach(struct bbc_i2c_bus *bp, struct of_device *op)
{
 struct bbc_i2c_client *client;
 const u32 *reg;

 client = kzalloc(sizeof(*client), GFP_KERNEL);
 if (!client)
  return ((void*)0);
 client->bp = bp;
 client->op = op;

 reg = of_get_property(op->node, "reg", ((void*)0));
 if (!reg) {
  kfree(client);
  return ((void*)0);
 }

 client->bus = reg[0];
 client->address = reg[1];

 claim_device(bp, op);

 return client;
}
