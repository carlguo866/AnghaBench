
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct krb5_key_state {struct aes_state* ks_priv; } ;
struct cryptop {size_t crp_ilen; int crp_olen; int crp_flags; int crp_callback; void* crp_opaque; void* crp_buf; scalar_t__ crp_etype; int crp_session; struct cryptodesc* crp_desc; } ;
struct cryptodesc {size_t crd_skip; size_t crd_len; size_t crd_inject; int crd_alg; int * crd_next; scalar_t__ crd_flags; } ;
struct aes_state {int as_lock; int as_session_sha1; } ;


 int CRYPTOCAP_F_SYNC ;
 int CRYPTO_F_CBIFSYNC ;
 int CRYPTO_F_DONE ;
 int CRYPTO_F_IMBUF ;
 int CRYPTO_SHA1_HMAC ;
 int aes_crypto_cb ;
 int crypto_dispatch (struct cryptop*) ;
 int crypto_freereq (struct cryptop*) ;
 struct cryptop* crypto_getreq (int) ;
 int crypto_ses2caps (int ) ;
 int msleep (struct cryptop*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
aes_checksum(const struct krb5_key_state *ks, int usage,
    struct mbuf *inout, size_t skip, size_t inlen, size_t outlen)
{
 struct aes_state *as = ks->ks_priv;
 struct cryptop *crp;
 struct cryptodesc *crd;
 int error;

 crp = crypto_getreq(1);
 crd = crp->crp_desc;

 crd->crd_skip = skip;
 crd->crd_len = inlen;
 crd->crd_inject = skip + inlen;
 crd->crd_flags = 0;
 crd->crd_next = ((void*)0);
 crd->crd_alg = CRYPTO_SHA1_HMAC;

 crp->crp_session = as->as_session_sha1;
 crp->crp_ilen = inlen;
 crp->crp_olen = 12;
 crp->crp_etype = 0;
 crp->crp_flags = CRYPTO_F_IMBUF | CRYPTO_F_CBIFSYNC;
 crp->crp_buf = (void *) inout;
 crp->crp_opaque = (void *) as;
 crp->crp_callback = aes_crypto_cb;

 error = crypto_dispatch(crp);

 if ((crypto_ses2caps(as->as_session_sha1) & CRYPTOCAP_F_SYNC) == 0) {
  mtx_lock(&as->as_lock);
  if (!error && !(crp->crp_flags & CRYPTO_F_DONE))
   error = msleep(crp, &as->as_lock, 0, "gssaes", 0);
  mtx_unlock(&as->as_lock);
 }

 crypto_freereq(crp);
}
