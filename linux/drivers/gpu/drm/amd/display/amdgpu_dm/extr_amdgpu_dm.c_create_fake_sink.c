
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_sink_init_data {int sink_signal; TYPE_1__* link; int member_0; } ;
struct dc_sink {int sink_signal; } ;
struct amdgpu_dm_connector {TYPE_1__* dc_link; } ;
struct TYPE_2__ {int connector_signal; } ;


 int DRM_ERROR (char*) ;
 int SIGNAL_TYPE_VIRTUAL ;
 struct dc_sink* dc_sink_create (struct dc_sink_init_data*) ;

__attribute__((used)) static struct dc_sink *
create_fake_sink(struct amdgpu_dm_connector *aconnector)
{
 struct dc_sink_init_data sink_init_data = { 0 };
 struct dc_sink *sink = ((void*)0);
 sink_init_data.link = aconnector->dc_link;
 sink_init_data.sink_signal = aconnector->dc_link->connector_signal;

 sink = dc_sink_create(&sink_init_data);
 if (!sink) {
  DRM_ERROR("Failed to create sink!\n");
  return ((void*)0);
 }
 sink->sink_signal = SIGNAL_TYPE_VIRTUAL;

 return sink;
}
