
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int type; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int GString ;
 int network_mysqld_proto_binary_append_date_type (int *,TYPE_1__*) ;
 int network_mysqld_proto_binary_append_double_type (int *,TYPE_1__*) ;
 int network_mysqld_proto_binary_append_float_type (int *,TYPE_1__*) ;
 int network_mysqld_proto_binary_append_int_type (int *,TYPE_1__*) ;
 int network_mysqld_proto_binary_append_string_type (int *,TYPE_1__*) ;
 int network_mysqld_proto_binary_append_time_type (int *,TYPE_1__*) ;

int network_mysqld_proto_binary_append_type(GString *packet, network_mysqld_type_t *type) {
 switch (type->type) {
 case 130:
 case 134:
 case 139:
 case 140:
 case 138:
  return network_mysqld_proto_binary_append_int_type(packet, type);
 case 144:
 case 143:
 case 131:
  return network_mysqld_proto_binary_append_date_type(packet, type);
 case 132:
  return network_mysqld_proto_binary_append_time_type(packet, type);
 case 141:
  return network_mysqld_proto_binary_append_float_type(packet, type);
 case 142:
  return network_mysqld_proto_binary_append_double_type(packet, type);
 case 146:
 case 135:
 case 145:
 case 129:
 case 136:
 case 137:
 case 133:
 case 128:

  return network_mysqld_proto_binary_append_string_type(packet, type);
 default:
  break;
 }

 return -1;
}
