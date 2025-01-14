
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mg_mqtt_topic_expression {int* topic; int qos; } ;
struct mg_connection {int dummy; } ;


 int MG_MQTT_CMD_SUBSCRIBE ;
 int MG_MQTT_QOS (int) ;
 int htons (int) ;
 int mg_send (struct mg_connection*,...) ;
 int mg_send_mqtt_header (struct mg_connection*,int ,int ,size_t) ;
 int strlen (int*) ;

void mg_mqtt_subscribe(struct mg_connection *nc,
                       const struct mg_mqtt_topic_expression *topics,
                       size_t topics_len, uint16_t message_id) {
  uint16_t netbytes;
  size_t i;
  uint16_t topic_len;
  size_t total_len = 2;

  for (i = 0; i < topics_len; i++) {
    total_len += 2 + strlen(topics[i].topic) + 1;
  }

  mg_send_mqtt_header(nc, MG_MQTT_CMD_SUBSCRIBE, MG_MQTT_QOS(1), total_len);

  netbytes = htons(message_id);
  mg_send(nc, (char *) &netbytes, 2);

  for (i = 0; i < topics_len; i++) {
    topic_len = strlen(topics[i].topic);
    netbytes = htons(topic_len);
    mg_send(nc, &netbytes, 2);
    mg_send(nc, topics[i].topic, topic_len);
    mg_send(nc, &topics[i].qos, 1);
  }
}
