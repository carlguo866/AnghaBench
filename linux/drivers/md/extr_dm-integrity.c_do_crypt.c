
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct journal_completion {TYPE_1__* ic; } ;
struct TYPE_2__ {int crypto_backoff; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EBUSY ;
 int EINPROGRESS ;
 int complete_journal_encrypt ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int dm_integrity_io_error (TYPE_1__*,char*,int) ;
 scalar_t__ likely (int) ;
 int reinit_completion (int *) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,struct journal_completion*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static bool do_crypt(bool encrypt, struct skcipher_request *req, struct journal_completion *comp)
{
 int r;
 skcipher_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
          complete_journal_encrypt, comp);
 if (likely(encrypt))
  r = crypto_skcipher_encrypt(req);
 else
  r = crypto_skcipher_decrypt(req);
 if (likely(!r))
  return 0;
 if (likely(r == -EINPROGRESS))
  return 1;
 if (likely(r == -EBUSY)) {
  wait_for_completion(&comp->ic->crypto_backoff);
  reinit_completion(&comp->ic->crypto_backoff);
  return 1;
 }
 dm_integrity_io_error(comp->ic, "encrypt", r);
 return 0;
}
