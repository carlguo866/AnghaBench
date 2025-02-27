
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftl_stream {int send_sem; int packets_mutex; int encode_error; } ;
struct encoder_packet {scalar_t__ type; } ;


 scalar_t__ OBS_ENCODER_VIDEO ;
 int active (struct ftl_stream*) ;
 int add_packet (struct ftl_stream*,struct encoder_packet*) ;
 int add_video_packet (struct ftl_stream*,struct encoder_packet*) ;
 scalar_t__ disconnected (struct ftl_stream*) ;
 int obs_encoder_packet_ref (struct encoder_packet*,struct encoder_packet*) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 int obs_parse_avc_packet (struct encoder_packet*,struct encoder_packet*) ;
 int os_atomic_set_bool (int *,int) ;
 int os_sem_post (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ftl_stream_data(void *data, struct encoder_packet *packet)
{
 struct ftl_stream *stream = data;

 struct encoder_packet new_packet;
 bool added_packet = 0;

 if (disconnected(stream) || !active(stream))
  return;


 if (!packet) {
  os_atomic_set_bool(&stream->encode_error, 1);
  os_sem_post(stream->send_sem);
  return;
 }

 if (packet->type == OBS_ENCODER_VIDEO)
  obs_parse_avc_packet(&new_packet, packet);
 else
  obs_encoder_packet_ref(&new_packet, packet);

 pthread_mutex_lock(&stream->packets_mutex);

 if (!disconnected(stream)) {
  added_packet = (packet->type == OBS_ENCODER_VIDEO)
           ? add_video_packet(stream, &new_packet)
           : add_packet(stream, &new_packet);
 }

 pthread_mutex_unlock(&stream->packets_mutex);

 if (added_packet)
  os_sem_post(stream->send_sem);
 else
  obs_encoder_packet_release(&new_packet);
}
