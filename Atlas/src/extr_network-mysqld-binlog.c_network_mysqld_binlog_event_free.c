
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {TYPE_9__* query; } ;
struct TYPE_17__ {TYPE_9__* row; TYPE_9__* used_columns_after; TYPE_9__* used_columns_before; } ;
struct TYPE_16__ {TYPE_9__* null_bits; TYPE_9__* metadata; TYPE_9__* columns; TYPE_9__* table_name; TYPE_9__* db_name; } ;
struct TYPE_15__ {TYPE_9__* value; TYPE_9__* name; } ;
struct TYPE_14__ {TYPE_9__* perm_events; TYPE_9__* master_version; } ;
struct TYPE_13__ {TYPE_9__* binlog_file; } ;
struct TYPE_12__ {TYPE_9__* query; TYPE_9__* db_name; } ;
struct TYPE_19__ {TYPE_7__ rows_query; TYPE_6__ row_event; TYPE_5__ table_map_event; TYPE_4__ user_var_event; TYPE_3__ format_event; TYPE_2__ rotate_event; TYPE_1__ query_event; } ;
struct TYPE_20__ {int event_type; TYPE_8__ event; } ;
typedef TYPE_9__ network_mysqld_binlog_event ;
 int g_free (TYPE_9__*) ;

void network_mysqld_binlog_event_free(network_mysqld_binlog_event *event) {
 if (!event) return;

 switch (event->event_type) {
 case 134:
  if (event->event.query_event.db_name) g_free(event->event.query_event.db_name);
  if (event->event.query_event.query) g_free(event->event.query_event.query);
  break;
 case 133:
  if (event->event.rotate_event.binlog_file) g_free(event->event.rotate_event.binlog_file);
  break;
 case 135:
  if (event->event.format_event.master_version) g_free(event->event.format_event.master_version);
  if (event->event.format_event.perm_events) g_free(event->event.format_event.perm_events);
  break;
 case 129:
  if (event->event.user_var_event.name) g_free(event->event.user_var_event.name);
  if (event->event.user_var_event.value) g_free(event->event.user_var_event.value);
  break;
 case 131:
  if (event->event.table_map_event.db_name) g_free(event->event.table_map_event.db_name);
  if (event->event.table_map_event.table_name) g_free(event->event.table_map_event.table_name);
  if (event->event.table_map_event.columns) g_free(event->event.table_map_event.columns);
  if (event->event.table_map_event.metadata) g_free(event->event.table_map_event.metadata);
  if (event->event.table_map_event.null_bits) g_free(event->event.table_map_event.null_bits);
  break;
 case 136:
 case 130:
 case 128:
  if (event->event.row_event.used_columns_before) g_free(event->event.row_event.used_columns_before);
  if (event->event.row_event.used_columns_after) g_free(event->event.row_event.used_columns_after);
  if (event->event.row_event.row) g_free(event->event.row_event.row);
  break;
 case 132:
  if (event->event.rows_query.query) g_free(event->event.rows_query.query);
  break;
 default:
  break;
 }

 g_free(event);
}
