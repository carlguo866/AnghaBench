
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union voltage_object_info {int v1; } ;
struct TYPE_7__ {int ucFlag; int usVoltageStep; } ;
struct TYPE_6__ {TYPE_3__ asFormula; } ;
union voltage_object {TYPE_2__ v1; } ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {TYPE_4__* atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct TYPE_8__ {int bios; } ;
typedef TYPE_3__ ATOM_VOLTAGE_FORMULA ;


 int DATA ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int VoltageObjectInfo ;
 scalar_t__ atom_lookup_voltage_object_v1 (int *,int) ;
 scalar_t__ atom_parse_data_header (TYPE_4__*,int,int*,int*,int*,int*) ;
 int le16_to_cpu (int ) ;

int radeon_atom_get_voltage_step(struct radeon_device *rdev,
     u8 voltage_type, u16 *voltage_step)
{
 int index = GetIndexIntoMasterTable(DATA, VoltageObjectInfo);
 u8 frev, crev;
 u16 data_offset, size;
 union voltage_object_info *voltage_info;
 union voltage_object *voltage_object = ((void*)0);

 if (atom_parse_data_header(rdev->mode_info.atom_context, index, &size,
       &frev, &crev, &data_offset)) {
  voltage_info = (union voltage_object_info *)
   (rdev->mode_info.atom_context->bios + data_offset);

  switch (crev) {
  case 1:
   voltage_object = (union voltage_object *)
    atom_lookup_voltage_object_v1(&voltage_info->v1, voltage_type);
   if (voltage_object) {
    ATOM_VOLTAGE_FORMULA *formula =
     &voltage_object->v1.asFormula;
    if (formula->ucFlag & 1)
     *voltage_step =
      (le16_to_cpu(formula->usVoltageStep) + 1) / 2;
    else
     *voltage_step =
      le16_to_cpu(formula->usVoltageStep);
    return 0;
   }
   break;
  case 2:
   return -EINVAL;
  default:
   DRM_ERROR("unknown voltage object table\n");
   return -EINVAL;
  }

 }
 return -EINVAL;
}
