
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROP_DEATH_NOTES ;
 int PROP_LOG_LINKS ;
 int PROP_REG_INFO ;
 int UPDATE_LIFE_GLOBAL_RM_NOTES ;
 int allocate_reg_life_data () ;
 int no_new_pseudos ;
 int partition_hot_cold_basic_blocks () ;
 int update_life_info (int *,int ,int) ;

__attribute__((used)) static unsigned int
rest_of_handle_partition_blocks (void)
{
  no_new_pseudos = 0;
  partition_hot_cold_basic_blocks ();
  allocate_reg_life_data ();
  update_life_info (((void*)0), UPDATE_LIFE_GLOBAL_RM_NOTES,
      PROP_LOG_LINKS | PROP_REG_INFO | PROP_DEATH_NOTES);
  no_new_pseudos = 1;
  return 0;
}
