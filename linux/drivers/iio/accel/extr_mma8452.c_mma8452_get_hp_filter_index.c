
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mma8452_get_int_plus_micros_index (int ,int ,int,int) ;
 int mma8452_get_odr_index (struct mma8452_data*) ;
 int mma8452_get_power_mode (struct mma8452_data*) ;
 int ** mma8452_hp_filter_cutoff ;

__attribute__((used)) static int mma8452_get_hp_filter_index(struct mma8452_data *data,
           int val, int val2)
{
 int i, j;

 i = mma8452_get_odr_index(data);
 j = mma8452_get_power_mode(data);
 if (j < 0)
  return j;

 return mma8452_get_int_plus_micros_index(mma8452_hp_filter_cutoff[j][i],
  ARRAY_SIZE(mma8452_hp_filter_cutoff[0][0]), val, val2);
}
