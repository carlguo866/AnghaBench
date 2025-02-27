
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_13__ {int alphabet_size_max; } ;
struct TYPE_17__ {TYPE_1__ dist; } ;
struct TYPE_16__ {int data_; } ;
struct TYPE_15__ {int data_; } ;
struct TYPE_14__ {int data_; } ;
typedef int MemoryManager ;
typedef TYPE_2__ HistogramLiteral ;
typedef TYPE_3__ HistogramDistance ;
typedef TYPE_4__ HistogramCommand ;
typedef int Command ;
typedef TYPE_5__ BrotliEncoderParams ;
typedef scalar_t__ BROTLI_BOOL ;


 int BROTLI_ALLOC (int *,int,int ) ;
 int BROTLI_FREE (int *,int) ;
 scalar_t__ BROTLI_IS_NULL (int) ;
 scalar_t__ BROTLI_IS_OOM (int *) ;
 int BROTLI_NUM_COMMAND_SYMBOLS ;
 int BROTLI_NUM_LITERAL_SYMBOLS ;
 int BrotliWriteBits (int,int ,size_t*,int *) ;
 int BuildAndStoreHuffmanTree (int ,int,int,int,int *,int *,size_t*,int *) ;
 int BuildHistograms (int const*,size_t,size_t,int const*,size_t,TYPE_2__*,TYPE_4__*,TYPE_3__*) ;
 int HistogramClearCommand (TYPE_4__*) ;
 int HistogramClearDistance (TYPE_3__*) ;
 int HistogramClearLiteral (TYPE_2__*) ;
 int HuffmanTree ;
 int JumpToByteBoundary (size_t*,int *) ;
 int MAX_HUFFMAN_TREE_SIZE ;
 int MAX_SIMPLE_DISTANCE_ALPHABET_SIZE ;
 int StoreCompressedMetaBlockHeader (scalar_t__,size_t,size_t*,int *) ;
 int StoreDataWithHuffmanCodes (int const*,size_t,size_t,int const*,size_t,int *,int *,int *,int *,int *,int *,size_t*,int *) ;
 int tree ;

void BrotliStoreMetaBlockTrivial(MemoryManager* m,
    const uint8_t* input, size_t start_pos, size_t length, size_t mask,
    BROTLI_BOOL is_last, const BrotliEncoderParams* params,
    const Command* commands, size_t n_commands,
    size_t* storage_ix, uint8_t* storage) {
  HistogramLiteral lit_histo;
  HistogramCommand cmd_histo;
  HistogramDistance dist_histo;
  uint8_t lit_depth[BROTLI_NUM_LITERAL_SYMBOLS];
  uint16_t lit_bits[BROTLI_NUM_LITERAL_SYMBOLS];
  uint8_t cmd_depth[BROTLI_NUM_COMMAND_SYMBOLS];
  uint16_t cmd_bits[BROTLI_NUM_COMMAND_SYMBOLS];
  uint8_t dist_depth[MAX_SIMPLE_DISTANCE_ALPHABET_SIZE];
  uint16_t dist_bits[MAX_SIMPLE_DISTANCE_ALPHABET_SIZE];
  HuffmanTree* tree;
  uint32_t num_distance_symbols = params->dist.alphabet_size_max;

  StoreCompressedMetaBlockHeader(is_last, length, storage_ix, storage);

  HistogramClearLiteral(&lit_histo);
  HistogramClearCommand(&cmd_histo);
  HistogramClearDistance(&dist_histo);

  BuildHistograms(input, start_pos, mask, commands, n_commands,
                  &lit_histo, &cmd_histo, &dist_histo);

  BrotliWriteBits(13, 0, storage_ix, storage);

  tree = BROTLI_ALLOC(m, HuffmanTree, MAX_HUFFMAN_TREE_SIZE);
  if (BROTLI_IS_OOM(m) || BROTLI_IS_NULL(tree)) return;
  BuildAndStoreHuffmanTree(lit_histo.data_, BROTLI_NUM_LITERAL_SYMBOLS,
                           BROTLI_NUM_LITERAL_SYMBOLS, tree,
                           lit_depth, lit_bits,
                           storage_ix, storage);
  BuildAndStoreHuffmanTree(cmd_histo.data_, BROTLI_NUM_COMMAND_SYMBOLS,
                           BROTLI_NUM_COMMAND_SYMBOLS, tree,
                           cmd_depth, cmd_bits,
                           storage_ix, storage);
  BuildAndStoreHuffmanTree(dist_histo.data_, MAX_SIMPLE_DISTANCE_ALPHABET_SIZE,
                           num_distance_symbols, tree,
                           dist_depth, dist_bits,
                           storage_ix, storage);
  BROTLI_FREE(m, tree);
  StoreDataWithHuffmanCodes(input, start_pos, mask, commands,
                            n_commands, lit_depth, lit_bits,
                            cmd_depth, cmd_bits,
                            dist_depth, dist_bits,
                            storage_ix, storage);
  if (is_last) {
    JumpToByteBoundary(storage_ix, storage);
  }
}
