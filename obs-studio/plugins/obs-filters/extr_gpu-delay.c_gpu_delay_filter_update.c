
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct gpu_delay_filter_data {unsigned long long delay_ns; scalar_t__ interval_ns; scalar_t__ cy; scalar_t__ cx; } ;
typedef int obs_data_t ;


 int S_DELAY_MS ;
 int free_textures (struct gpu_delay_filter_data*) ;
 scalar_t__ obs_data_get_int (int *,int ) ;

__attribute__((used)) static void gpu_delay_filter_update(void *data, obs_data_t *s)
{
 struct gpu_delay_filter_data *f = data;

 f->delay_ns = (uint64_t)obs_data_get_int(s, S_DELAY_MS) * 1000000ULL;


 f->cx = 0;
 f->cy = 0;
 f->interval_ns = 0;
 free_textures(f);
}
