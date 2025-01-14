
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_encoder_atom_dac {int tv_std; } ;
struct radeon_encoder {int active_device; int pixel_clock; struct radeon_encoder_atom_dac* enc_priv; } ;
struct TYPE_6__ {int atom_context; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef int args ;
struct TYPE_5__ {int ucAction; int usPixelClock; void* ucTvStandard; } ;
struct TYPE_7__ {TYPE_1__ sTVEncoder; } ;
typedef TYPE_3__ TV_ENCODER_CONTROL_PS_ALLOCATION ;


 int ATOM_DEVICE_CV_SUPPORT ;
 void* ATOM_TV_CV ;
 void* ATOM_TV_NTSC ;
 void* ATOM_TV_NTSCJ ;
 void* ATOM_TV_PAL ;
 void* ATOM_TV_PAL60 ;
 void* ATOM_TV_PALCN ;
 void* ATOM_TV_PALM ;
 void* ATOM_TV_SECAM ;
 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int TVEncoderControl ;
 int atom_execute_table (int ,int,int *) ;
 int cpu_to_le16 (int) ;
 int memset (TYPE_3__*,int ,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
atombios_tv_setup(struct drm_encoder *encoder, int action)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 TV_ENCODER_CONTROL_PS_ALLOCATION args;
 int index = 0;
 struct radeon_encoder_atom_dac *dac_info = radeon_encoder->enc_priv;

 memset(&args, 0, sizeof(args));

 index = GetIndexIntoMasterTable(COMMAND, TVEncoderControl);

 args.sTVEncoder.ucAction = action;

 if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT))
  args.sTVEncoder.ucTvStandard = ATOM_TV_CV;
 else {
  switch (dac_info->tv_std) {
  case 135:
   args.sTVEncoder.ucTvStandard = ATOM_TV_NTSC;
   break;
  case 133:
   args.sTVEncoder.ucTvStandard = ATOM_TV_PAL;
   break;
  case 130:
   args.sTVEncoder.ucTvStandard = ATOM_TV_PALM;
   break;
  case 132:
   args.sTVEncoder.ucTvStandard = ATOM_TV_PAL60;
   break;
  case 134:
   args.sTVEncoder.ucTvStandard = ATOM_TV_NTSCJ;
   break;
  case 129:
   args.sTVEncoder.ucTvStandard = ATOM_TV_PAL;
   break;
  case 128:
   args.sTVEncoder.ucTvStandard = ATOM_TV_SECAM;
   break;
  case 131:
   args.sTVEncoder.ucTvStandard = ATOM_TV_PALCN;
   break;
  default:
   args.sTVEncoder.ucTvStandard = ATOM_TV_NTSC;
   break;
  }
 }

 args.sTVEncoder.usPixelClock = cpu_to_le16(radeon_encoder->pixel_clock / 10);

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

}
