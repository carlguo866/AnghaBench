
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;



__attribute__((used)) static int
edsc_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
 case 128:
  break;
 default:




  return (EOPNOTSUPP);
 }
 return (0);
}
