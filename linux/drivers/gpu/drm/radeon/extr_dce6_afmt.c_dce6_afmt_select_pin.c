
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_encoder_atom_dig {TYPE_2__* pin; TYPE_3__* afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_4__ {struct radeon_device* dev_private; } ;


 scalar_t__ AFMT_AUDIO_SRC_CONTROL ;
 int AFMT_AUDIO_SRC_SELECT (int ) ;
 int WREG32 (scalar_t__,int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void dce6_afmt_select_pin(struct drm_encoder *encoder)
{
 struct radeon_device *rdev = encoder->dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;

 if (!dig || !dig->afmt || !dig->pin)
  return;

 WREG32(AFMT_AUDIO_SRC_CONTROL + dig->afmt->offset,
        AFMT_AUDIO_SRC_SELECT(dig->pin->id));
}
