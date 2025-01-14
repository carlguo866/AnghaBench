
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
struct necp_tlv_header {int dummy; } ;
struct necp_client_result_netagent {int netagent_uuid; } ;
struct necp_client {size_t result_length; scalar_t__* result; } ;


 scalar_t__ NECP_CLIENT_RESULT_NETAGENT ;
 int memmove (scalar_t__*,scalar_t__*,size_t) ;
 int memset (scalar_t__*,int ,int) ;
 int necp_buffer_get_tlv_length (scalar_t__*,size_t) ;
 scalar_t__ necp_buffer_get_tlv_type (scalar_t__*,size_t) ;
 scalar_t__ necp_buffer_get_tlv_value (scalar_t__*,size_t,int *) ;
 scalar_t__ uuid_compare (int ,int ) ;

__attribute__((used)) static void
necp_client_remove_agent_from_result(struct necp_client *client, uuid_t netagent_uuid)
{
 size_t offset = 0;

 u_int8_t *result_buffer = client->result;
 while ((offset + sizeof(struct necp_tlv_header)) <= client->result_length) {
  u_int8_t type = necp_buffer_get_tlv_type(result_buffer, offset);
  u_int32_t length = necp_buffer_get_tlv_length(result_buffer, offset);

  size_t tlv_total_length = (sizeof(struct necp_tlv_header) + length);
  if (type == NECP_CLIENT_RESULT_NETAGENT &&
   length == sizeof(struct necp_client_result_netagent) &&
   (offset + tlv_total_length) <= client->result_length) {
   struct necp_client_result_netagent *value = ((struct necp_client_result_netagent *)(void *)
               necp_buffer_get_tlv_value(result_buffer, offset, ((void*)0)));
   if (uuid_compare(value->netagent_uuid, netagent_uuid) == 0) {



    memmove(result_buffer + offset,
      result_buffer + offset + tlv_total_length,
      client->result_length - (offset + tlv_total_length));
    client->result_length -= tlv_total_length;
    memset(result_buffer + client->result_length, 0, sizeof(client->result) - client->result_length);
    continue;
   }
  }

  offset += tlv_total_length;
 }
}
