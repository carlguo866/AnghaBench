
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adp5061_state {int regmap; } ;


 int ADP5061_IEND ;
 int ADP5061_IEND_IEND_MODE (int) ;
 int ADP5061_IEND_IEND_MSK ;
 int ARRAY_SIZE (int ) ;
 int adp5061_get_array_index (int ,int ,int) ;
 int adp5061_iend ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int adp5061_set_termination_current(struct adp5061_state *st, int val)
{
 int index;

 index = adp5061_get_array_index(adp5061_iend,
     ARRAY_SIZE(adp5061_iend),
     val);
 if (index < 0)
  return index;

 return regmap_update_bits(st->regmap, ADP5061_IEND,
      ADP5061_IEND_IEND_MSK,
      ADP5061_IEND_IEND_MODE(index));
}
