
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int num_pipes; int max_compress_frags; int num_rb_per_se; int num_se; int pipe_interleave_size; } ;
struct TYPE_5__ {int max_hw_contexts; int sc_prim_fifo_size_frontend; int sc_prim_fifo_size_backend; int sc_earlyz_tile_fifo_size; int max_tile_pipes; int gb_addr_config; TYPE_1__ gb_addr_config_fields; int sc_hiz_tile_fifo_size; } ;
struct TYPE_6__ {TYPE_2__ config; int * funcs; } ;
struct amdgpu_device {int asic_type; TYPE_3__ gfx; } ;


 int BUG () ;



 int GB_ADDR_CONFIG ;
 int GC ;
 int MAX_COMPRESSED_FRAGS ;
 int NUM_PIPES ;
 int NUM_RB_PER_SE ;
 int NUM_SHADER_ENGINES ;
 int PIPE_INTERLEAVE_SIZE ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int gfx_v10_0_gfx_funcs ;
 int mmGB_ADDR_CONFIG ;

__attribute__((used)) static void gfx_v10_0_gpu_early_init(struct amdgpu_device *adev)
{
 u32 gb_addr_config;

 adev->gfx.funcs = &gfx_v10_0_gfx_funcs;

 switch (adev->asic_type) {
 case 130:
 case 128:
 case 129:
  adev->gfx.config.max_hw_contexts = 8;
  adev->gfx.config.sc_prim_fifo_size_frontend = 0x20;
  adev->gfx.config.sc_prim_fifo_size_backend = 0x100;
  adev->gfx.config.sc_hiz_tile_fifo_size = 0;
  adev->gfx.config.sc_earlyz_tile_fifo_size = 0x4C0;
  gb_addr_config = RREG32_SOC15(GC, 0, mmGB_ADDR_CONFIG);
  break;
 default:
  BUG();
  break;
 }

 adev->gfx.config.gb_addr_config = gb_addr_config;

 adev->gfx.config.gb_addr_config_fields.num_pipes = 1 <<
   REG_GET_FIELD(adev->gfx.config.gb_addr_config,
          GB_ADDR_CONFIG, NUM_PIPES);

 adev->gfx.config.max_tile_pipes =
  adev->gfx.config.gb_addr_config_fields.num_pipes;

 adev->gfx.config.gb_addr_config_fields.max_compress_frags = 1 <<
   REG_GET_FIELD(adev->gfx.config.gb_addr_config,
          GB_ADDR_CONFIG, MAX_COMPRESSED_FRAGS);
 adev->gfx.config.gb_addr_config_fields.num_rb_per_se = 1 <<
   REG_GET_FIELD(adev->gfx.config.gb_addr_config,
          GB_ADDR_CONFIG, NUM_RB_PER_SE);
 adev->gfx.config.gb_addr_config_fields.num_se = 1 <<
   REG_GET_FIELD(adev->gfx.config.gb_addr_config,
          GB_ADDR_CONFIG, NUM_SHADER_ENGINES);
 adev->gfx.config.gb_addr_config_fields.pipe_interleave_size = 1 << (8 +
   REG_GET_FIELD(adev->gfx.config.gb_addr_config,
          GB_ADDR_CONFIG, PIPE_INTERLEAVE_SIZE));
}
