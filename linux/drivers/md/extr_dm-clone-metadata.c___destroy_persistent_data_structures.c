
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int bm; int tm; int sm; } ;


 int dm_block_manager_destroy (int ) ;
 int dm_sm_destroy (int ) ;
 int dm_tm_destroy (int ) ;

__attribute__((used)) static void __destroy_persistent_data_structures(struct dm_clone_metadata *cmd)
{
 dm_sm_destroy(cmd->sm);
 dm_tm_destroy(cmd->tm);
 dm_block_manager_destroy(cmd->bm);
}
