
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
cesa_is_hash(int alg)
{

 switch (alg) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return (1);
 default:
  return (0);
 }
}
