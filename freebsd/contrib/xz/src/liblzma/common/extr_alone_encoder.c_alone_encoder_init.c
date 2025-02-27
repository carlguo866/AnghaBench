
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lzma_ret ;
struct TYPE_13__ {scalar_t__ dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;
struct TYPE_14__ {int * end; int * code; TYPE_4__* coder; } ;
typedef TYPE_2__ lzma_next_coder ;
struct TYPE_15__ {void* options; int * init; } ;
typedef TYPE_3__ lzma_filter_info ;
struct TYPE_16__ {int next; scalar_t__ header; scalar_t__ header_pos; int sequence; } ;
typedef TYPE_4__ lzma_alone_coder ;
typedef int lzma_allocator ;


 scalar_t__ LZMA_DICT_SIZE_MIN ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OPTIONS_ERROR ;
 int SEQ_HEADER ;
 int UINT32_MAX ;
 int alone_encode ;
 int alone_encoder_end ;
 TYPE_4__* lzma_alloc (int,int const*) ;
 int lzma_lzma_encoder_init ;
 scalar_t__ lzma_lzma_lclppb_encode (TYPE_1__ const*,scalar_t__) ;
 int lzma_next_coder_init (int (*) (TYPE_2__*,int const*,TYPE_1__ const*),TYPE_2__*,int const*) ;
 int lzma_next_filter_init (int *,int const*,TYPE_3__ const*) ;
 int memset (scalar_t__,int,int) ;
 int unaligned_write32le (scalar_t__,int) ;

__attribute__((used)) static lzma_ret
alone_encoder_init(lzma_next_coder *next, const lzma_allocator *allocator,
  const lzma_options_lzma *options)
{
 lzma_next_coder_init(&alone_encoder_init, next, allocator);

 lzma_alone_coder *coder = next->coder;

 if (coder == ((void*)0)) {
  coder = lzma_alloc(sizeof(lzma_alone_coder), allocator);
  if (coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->coder = coder;
  next->code = &alone_encode;
  next->end = &alone_encoder_end;
  coder->next = LZMA_NEXT_CODER_INIT;
 }


 coder->sequence = SEQ_HEADER;
 coder->header_pos = 0;



 if (lzma_lzma_lclppb_encode(options, coder->header))
  return LZMA_OPTIONS_ERROR;


 if (options->dict_size < LZMA_DICT_SIZE_MIN)
  return LZMA_OPTIONS_ERROR;





 uint32_t d = options->dict_size - 1;
 d |= d >> 2;
 d |= d >> 3;
 d |= d >> 4;
 d |= d >> 8;
 d |= d >> 16;
 if (d != UINT32_MAX)
  ++d;

 unaligned_write32le(coder->header + 1, d);


 memset(coder->header + 1 + 4, 0xFF, 8);


 const lzma_filter_info filters[2] = {
  {
   .init = &lzma_lzma_encoder_init,
   .options = (void *)(options),
  }, {
   .init = ((void*)0),
  }
 };

 return lzma_next_filter_init(&coder->next, allocator, filters);
}
