
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * parent; } ;
struct TYPE_9__ {char* name; TYPE_2__ dev; TYPE_1__* algo_data; int class; int owner; } ;
struct TYPE_6__ {int running; int aux_ch; scalar_t__ address; } ;
struct intel_dp {TYPE_4__ adapter; TYPE_1__ algo; } ;
struct TYPE_8__ {int kdev; } ;
struct intel_connector {TYPE_3__ base; } ;


 int DRM_DEBUG_KMS (char*,char const*) ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int i2c_dp_aux_add_bus (TYPE_4__*) ;
 int intel_dp_i2c_aux_ch ;
 int ironlake_edp_panel_vdd_off (struct intel_dp*,int) ;
 int ironlake_edp_panel_vdd_on (struct intel_dp*) ;
 int memset (TYPE_4__*,char,int) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
intel_dp_i2c_init(struct intel_dp *intel_dp,
    struct intel_connector *intel_connector, const char *name)
{
 int ret;

 DRM_DEBUG_KMS("i2c_init %s\n", name);
 intel_dp->algo.running = 0;
 intel_dp->algo.address = 0;
 intel_dp->algo.aux_ch = intel_dp_i2c_aux_ch;

 memset(&intel_dp->adapter, '\0', sizeof(intel_dp->adapter));
 intel_dp->adapter.owner = THIS_MODULE;
 intel_dp->adapter.class = I2C_CLASS_DDC;
 strncpy(intel_dp->adapter.name, name, sizeof(intel_dp->adapter.name) - 1);
 intel_dp->adapter.name[sizeof(intel_dp->adapter.name) - 1] = '\0';
 intel_dp->adapter.algo_data = &intel_dp->algo;
 intel_dp->adapter.dev.parent = &intel_connector->base.kdev;

 ironlake_edp_panel_vdd_on(intel_dp);
 ret = i2c_dp_aux_add_bus(&intel_dp->adapter);
 ironlake_edp_panel_vdd_off(intel_dp, 0);
 return ret;
}
