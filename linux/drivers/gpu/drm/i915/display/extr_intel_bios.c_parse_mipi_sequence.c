
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ panel_id; size_t** sequence; size_t* data; int seq_version; int size; } ;
struct TYPE_4__ {int panel_type; TYPE_1__ dsi; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct bdb_mipi_sequence {int version; } ;
struct bdb_header {int dummy; } ;


 int BDB_MIPI_SEQUENCE ;
 int DRM_DEBUG_DRIVER (char*,...) ;
 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*,size_t) ;
 int GFP_KERNEL ;
 scalar_t__ MIPI_DSI_GENERIC_PANEL_ID ;
 size_t MIPI_SEQ_END ;
 size_t MIPI_SEQ_MAX ;
 size_t MIPI_SEQ_TEAR_OFF ;
 size_t MIPI_SEQ_TEAR_ON ;
 size_t* find_panel_sequence_block (struct bdb_mipi_sequence const*,int,int *) ;
 struct bdb_mipi_sequence* find_section (struct bdb_header const*,int ) ;
 int fixup_mipi_sequences (struct drm_i915_private*) ;
 int goto_next_sequence (size_t*,int,int ) ;
 int goto_next_sequence_v3 (size_t*,int,int ) ;
 int kfree (size_t*) ;
 size_t* kmemdup (size_t const*,int ,int ) ;
 int memset (size_t**,int ,int) ;

__attribute__((used)) static void
parse_mipi_sequence(struct drm_i915_private *dev_priv,
      const struct bdb_header *bdb)
{
 int panel_type = dev_priv->vbt.panel_type;
 const struct bdb_mipi_sequence *sequence;
 const u8 *seq_data;
 u32 seq_size;
 u8 *data;
 int index = 0;


 if (dev_priv->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
  return;

 sequence = find_section(bdb, BDB_MIPI_SEQUENCE);
 if (!sequence) {
  DRM_DEBUG_KMS("No MIPI Sequence found, parsing complete\n");
  return;
 }


 if (sequence->version >= 4) {
  DRM_ERROR("Unable to parse MIPI Sequence Block v%u\n",
     sequence->version);
  return;
 }

 DRM_DEBUG_DRIVER("Found MIPI sequence block v%u\n", sequence->version);

 seq_data = find_panel_sequence_block(sequence, panel_type, &seq_size);
 if (!seq_data)
  return;

 data = kmemdup(seq_data, seq_size, GFP_KERNEL);
 if (!data)
  return;


 for (;;) {
  u8 seq_id = *(data + index);
  if (seq_id == MIPI_SEQ_END)
   break;

  if (seq_id >= MIPI_SEQ_MAX) {
   DRM_ERROR("Unknown sequence %u\n", seq_id);
   goto err;
  }


  if (seq_id == MIPI_SEQ_TEAR_ON || seq_id == MIPI_SEQ_TEAR_OFF)
   DRM_DEBUG_KMS("Unsupported sequence %u\n", seq_id);

  dev_priv->vbt.dsi.sequence[seq_id] = data + index;

  if (sequence->version >= 3)
   index = goto_next_sequence_v3(data, index, seq_size);
  else
   index = goto_next_sequence(data, index, seq_size);
  if (!index) {
   DRM_ERROR("Invalid sequence %u\n", seq_id);
   goto err;
  }
 }

 dev_priv->vbt.dsi.data = data;
 dev_priv->vbt.dsi.size = seq_size;
 dev_priv->vbt.dsi.seq_version = sequence->version;

 fixup_mipi_sequences(dev_priv);

 DRM_DEBUG_DRIVER("MIPI related VBT parsing complete\n");
 return;

err:
 kfree(data);
 memset(dev_priv->vbt.dsi.sequence, 0, sizeof(dev_priv->vbt.dsi.sequence));
}
