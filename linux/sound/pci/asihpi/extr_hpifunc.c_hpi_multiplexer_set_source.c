
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int HPI_MULTIPLEXER_SOURCE ;
 int hpi_control_param_set (int ,int ,int ,int ) ;

u16 hpi_multiplexer_set_source(u32 h_control, u16 source_node_type,
 u16 source_node_index)
{
 return hpi_control_param_set(h_control, HPI_MULTIPLEXER_SOURCE,
  source_node_type, source_node_index);
}
