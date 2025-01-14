
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec4_sg_entry {int dummy; } ;
struct device {int dummy; } ;
struct caam_hash_state {scalar_t__ buf_dma; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int current_buf (struct caam_hash_state*) ;
 int* current_buflen (struct caam_hash_state*) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dma_map_single (struct device*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_to_sec4_sg_one (struct sec4_sg_entry*,scalar_t__,int,int ) ;

__attribute__((used)) static inline int buf_map_to_sec4_sg(struct device *jrdev,
         struct sec4_sg_entry *sec4_sg,
         struct caam_hash_state *state)
{
 int buflen = *current_buflen(state);

 if (!buflen)
  return 0;

 state->buf_dma = dma_map_single(jrdev, current_buf(state), buflen,
     DMA_TO_DEVICE);
 if (dma_mapping_error(jrdev, state->buf_dma)) {
  dev_err(jrdev, "unable to map buf\n");
  state->buf_dma = 0;
  return -ENOMEM;
 }

 dma_to_sec4_sg_one(sec4_sg, state->buf_dma, buflen, 0);

 return 0;
}
