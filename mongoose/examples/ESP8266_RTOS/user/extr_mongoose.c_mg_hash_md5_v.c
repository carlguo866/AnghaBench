
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cs_md5_ctx ;


 int cs_md5_final (int *,int *) ;
 int cs_md5_init (int *) ;
 int cs_md5_update (int *,int const*,size_t const) ;

void mg_hash_md5_v(size_t num_msgs, const uint8_t *msgs[],
                   const size_t *msg_lens, uint8_t *digest) {
  size_t i;
  cs_md5_ctx md5_ctx;
  cs_md5_init(&md5_ctx);
  for (i = 0; i < num_msgs; i++) {
    cs_md5_update(&md5_ctx, msgs[i], msg_lens[i]);
  }
  cs_md5_final(digest, &md5_ctx);
}
