
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* protected_; } ;
struct TYPE_4__ {int state; } ;
typedef int FLAC__StreamDecoderState ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;

FLAC__StreamDecoderState FLAC__stream_decoder_get_state(const FLAC__StreamDecoder *decoder)
{
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->protected_);
 return decoder->protected_->state;
}
