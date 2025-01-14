
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int pcm_rcntrl_reg; int dma2; } ;
struct snd_gus_card {TYPE_1__ gf1; scalar_t__ c_pos; int c_period_size; int c_dma_size; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 scalar_t__ snd_pcm_format_unsigned (int ) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_gus_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_gf1_pcm_capture_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 struct snd_gus_card *gus = snd_pcm_substream_chip(substream);

 gus->c_dma_size = params_buffer_bytes(hw_params);
 gus->c_period_size = params_period_bytes(hw_params);
 gus->c_pos = 0;
 gus->gf1.pcm_rcntrl_reg = 0x21;
 if (params_channels(hw_params) > 1)
  gus->gf1.pcm_rcntrl_reg |= 2;
 if (gus->gf1.dma2 > 3)
  gus->gf1.pcm_rcntrl_reg |= 4;
 if (snd_pcm_format_unsigned(params_format(hw_params)))
  gus->gf1.pcm_rcntrl_reg |= 0x80;
 return snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params));
}
