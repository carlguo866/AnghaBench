
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
typedef struct comedi_lrange {int length; struct comedi_krange* range; } const comedi_lrange ;
struct comedi_krange {unsigned int min; unsigned int max; int flags; } ;
struct comedi_device {int dummy; } ;
struct comedi_devconfig {unsigned int* options; } ;


 int UNIT_volt ;
 struct comedi_lrange const* comedi_alloc_spriv (struct comedi_subdevice*,int) ;
 struct comedi_lrange const range_unknown ;

__attribute__((used)) static const struct comedi_lrange *das16_ao_range(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_devconfig *it)
{
 unsigned int min = it->options[6];
 unsigned int max = it->options[7];


 if (min || max) {
  struct comedi_lrange *lrange;
  struct comedi_krange *krange;


  lrange = comedi_alloc_spriv(s,
         sizeof(*lrange) + sizeof(*krange));
  if (!lrange)
   return &range_unknown;


  lrange->length = 1;
  krange = lrange->range;
  krange->min = min;
  krange->max = max;
  krange->flags = UNIT_volt;

  return lrange;
 }

 return &range_unknown;
}
