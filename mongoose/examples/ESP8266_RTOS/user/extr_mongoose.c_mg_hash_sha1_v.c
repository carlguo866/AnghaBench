
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cs_sha1_ctx ;


 int cs_sha1_final (int *,int *) ;
 int cs_sha1_init (int *) ;
 int cs_sha1_update (int *,int const*,size_t const) ;

void mg_hash_sha1_v(size_t num_msgs, const uint8_t *msgs[],
                    const size_t *msg_lens, uint8_t *digest) {
  size_t i;
  cs_sha1_ctx sha_ctx;
  cs_sha1_init(&sha_ctx);
  for (i = 0; i < num_msgs; i++) {
    cs_sha1_update(&sha_ctx, msgs[i], msg_lens[i]);
  }
  cs_sha1_final(digest, &sha_ctx);
}
