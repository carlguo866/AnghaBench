
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint64 ;
typedef int gchar ;
typedef int GString ;


 int g_string_append_c (int *,int) ;

int network_mysqld_proto_append_lenenc_int(GString *packet, guint64 length) {
 if (length < 251) {
  g_string_append_c(packet, length);
 } else if (length < 65536) {
  g_string_append_c(packet, (gchar)252);
  g_string_append_c(packet, (length >> 0) & 0xff);
  g_string_append_c(packet, (length >> 8) & 0xff);
 } else if (length < 16777216) {
  g_string_append_c(packet, (gchar)253);
  g_string_append_c(packet, (length >> 0) & 0xff);
  g_string_append_c(packet, (length >> 8) & 0xff);
  g_string_append_c(packet, (length >> 16) & 0xff);
 } else {
  g_string_append_c(packet, (gchar)254);

  g_string_append_c(packet, (length >> 0) & 0xff);
  g_string_append_c(packet, (length >> 8) & 0xff);
  g_string_append_c(packet, (length >> 16) & 0xff);
  g_string_append_c(packet, (length >> 24) & 0xff);

  g_string_append_c(packet, (length >> 32) & 0xff);
  g_string_append_c(packet, (length >> 40) & 0xff);
  g_string_append_c(packet, (length >> 48) & 0xff);
  g_string_append_c(packet, (length >> 56) & 0xff);
 }

 return 0;
}
