
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int flags; } ;


 int CF_CONFIG_NEEDED ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void mcam_set_config_needed(struct mcam_camera *cam, int needed)
{
 if (needed)
  set_bit(CF_CONFIG_NEEDED, &cam->flags);
 else
  clear_bit(CF_CONFIG_NEEDED, &cam->flags);
}
