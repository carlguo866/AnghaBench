
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__StreamDecoderWriteCallback ;
typedef int FLAC__StreamDecoderTellCallback ;
typedef int FLAC__StreamDecoderSeekCallback ;
typedef int FLAC__StreamDecoderReadCallback ;
typedef int FLAC__StreamDecoderMetadataCallback ;
typedef int FLAC__StreamDecoderLengthCallback ;
typedef int FLAC__StreamDecoderInitStatus ;
typedef int FLAC__StreamDecoderErrorCallback ;
typedef int FLAC__StreamDecoderEofCallback ;
typedef int FLAC__StreamDecoder ;


 int init_stream_internal_ (int *,int ,int ,int ,int ,int ,int ,int ,int ,void*,int) ;

FLAC__StreamDecoderInitStatus FLAC__stream_decoder_init_stream(
 FLAC__StreamDecoder *decoder,
 FLAC__StreamDecoderReadCallback read_callback,
 FLAC__StreamDecoderSeekCallback seek_callback,
 FLAC__StreamDecoderTellCallback tell_callback,
 FLAC__StreamDecoderLengthCallback length_callback,
 FLAC__StreamDecoderEofCallback eof_callback,
 FLAC__StreamDecoderWriteCallback write_callback,
 FLAC__StreamDecoderMetadataCallback metadata_callback,
 FLAC__StreamDecoderErrorCallback error_callback,
 void *client_data
)
{
 return init_stream_internal_(
  decoder,
  read_callback,
  seek_callback,
  tell_callback,
  length_callback,
  eof_callback,
  write_callback,
  metadata_callback,
  error_callback,
  client_data,
             0
 );
}
