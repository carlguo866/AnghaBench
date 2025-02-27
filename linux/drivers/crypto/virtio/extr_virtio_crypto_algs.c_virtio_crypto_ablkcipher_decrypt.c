
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto_request {int alg_cb; struct data_queue* dataq; } ;
struct virtio_crypto_sym_request {int encrypt; struct ablkcipher_request* ablkcipher_req; struct virtio_crypto_ablkcipher_ctx* ablkcipher_ctx; struct virtio_crypto_request base; } ;
struct virtio_crypto_ablkcipher_ctx {struct virtio_crypto* vcrypto; } ;
struct virtio_crypto {struct data_queue* data_vq; } ;
struct data_queue {int engine; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 struct virtio_crypto_sym_request* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 struct virtio_crypto_ablkcipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int crypto_transfer_ablkcipher_request_to_engine (int ,struct ablkcipher_request*) ;
 int virtio_crypto_dataq_sym_callback ;

__attribute__((used)) static int virtio_crypto_ablkcipher_decrypt(struct ablkcipher_request *req)
{
 struct crypto_ablkcipher *atfm = crypto_ablkcipher_reqtfm(req);
 struct virtio_crypto_ablkcipher_ctx *ctx = crypto_ablkcipher_ctx(atfm);
 struct virtio_crypto_sym_request *vc_sym_req =
    ablkcipher_request_ctx(req);
 struct virtio_crypto_request *vc_req = &vc_sym_req->base;
 struct virtio_crypto *vcrypto = ctx->vcrypto;

 struct data_queue *data_vq = &vcrypto->data_vq[0];

 vc_req->dataq = data_vq;
 vc_req->alg_cb = virtio_crypto_dataq_sym_callback;
 vc_sym_req->ablkcipher_ctx = ctx;
 vc_sym_req->ablkcipher_req = req;
 vc_sym_req->encrypt = 0;

 return crypto_transfer_ablkcipher_request_to_engine(data_vq->engine, req);
}
