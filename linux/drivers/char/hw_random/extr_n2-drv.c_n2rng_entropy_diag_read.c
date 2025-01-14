
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct n2rng {int dummy; } ;


 unsigned long __pa (int *) ;
 int n2rng_generic_read_diag_data (struct n2rng*,unsigned long,unsigned long,unsigned long) ;
 int n2rng_generic_write_control (struct n2rng*,unsigned long,unsigned long,int ) ;

__attribute__((used)) static int n2rng_entropy_diag_read(struct n2rng *np, unsigned long unit,
       u64 *pre_control, u64 pre_state,
       u64 *buffer, unsigned long buf_len,
       u64 *post_control, u64 post_state)
{
 unsigned long post_ctl_ra = __pa(post_control);
 unsigned long pre_ctl_ra = __pa(pre_control);
 unsigned long buffer_ra = __pa(buffer);
 int err;

 err = n2rng_generic_write_control(np, pre_ctl_ra, unit, pre_state);
 if (err)
  return err;

 err = n2rng_generic_read_diag_data(np, unit,
        buffer_ra, buf_len);

 (void) n2rng_generic_write_control(np, post_ctl_ra, unit,
        post_state);

 return err;
}
