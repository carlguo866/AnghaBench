
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* first_node; scalar_t__ buff_size; scalar_t__ node_num; } ;
struct TYPE_5__ {struct TYPE_5__* node_buff; struct TYPE_5__* next_node; } ;


 TYPE_4__ SppRecvDataBuff ;
 int free (TYPE_1__*) ;
 TYPE_1__* temp_spp_recv_data_node_p1 ;
 TYPE_1__* temp_spp_recv_data_node_p2 ;

__attribute__((used)) static void free_write_buffer(void)
{
    temp_spp_recv_data_node_p1 = SppRecvDataBuff.first_node;

    while(temp_spp_recv_data_node_p1 != ((void*)0)){
        temp_spp_recv_data_node_p2 = temp_spp_recv_data_node_p1->next_node;
        free(temp_spp_recv_data_node_p1->node_buff);
        free(temp_spp_recv_data_node_p1);
        temp_spp_recv_data_node_p1 = temp_spp_recv_data_node_p2;
    }

    SppRecvDataBuff.node_num = 0;
    SppRecvDataBuff.buff_size = 0;
    SppRecvDataBuff.first_node = ((void*)0);
}
