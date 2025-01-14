
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_iso_resources {int dummy; } ;
struct amdtp_stream {int dummy; } ;
struct snd_motu {TYPE_1__* spec; int unit; struct fw_iso_resources rx_resources; struct fw_iso_resources tx_resources; struct amdtp_stream tx_stream; } ;
typedef enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;
struct TYPE_2__ {int protocol; } ;


 int AMDTP_IN_STREAM ;
 int AMDTP_OUT_STREAM ;
 int amdtp_motu_init (struct amdtp_stream*,int ,int,int ) ;
 int fw_iso_resources_destroy (struct fw_iso_resources*) ;
 int fw_iso_resources_init (struct fw_iso_resources*,int ) ;

__attribute__((used)) static int init_stream(struct snd_motu *motu, struct amdtp_stream *s)
{
 struct fw_iso_resources *resources;
 enum amdtp_stream_direction dir;
 int err;

 if (s == &motu->tx_stream) {
  resources = &motu->tx_resources;
  dir = AMDTP_IN_STREAM;
 } else {
  resources = &motu->rx_resources;
  dir = AMDTP_OUT_STREAM;
 }

 err = fw_iso_resources_init(resources, motu->unit);
 if (err < 0)
  return err;

 err = amdtp_motu_init(s, motu->unit, dir, motu->spec->protocol);
 if (err < 0)
  fw_iso_resources_destroy(resources);

 return err;
}
