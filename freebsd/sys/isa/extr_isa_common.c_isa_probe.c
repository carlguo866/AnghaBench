
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_set_desc (int ,char*) ;
 int isa_init (int ) ;

__attribute__((used)) static int
isa_probe(device_t dev)
{
 device_set_desc(dev, "ISA bus");
 isa_init(dev);
 return (0);
}
