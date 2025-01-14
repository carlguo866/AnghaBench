
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_evaluate_info {TYPE_2__* resolved_node; } ;
typedef int acpi_status ;
struct TYPE_3__ {scalar_t__ integer; } ;
struct TYPE_4__ {TYPE_1__ name; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_MTX_NAMESPACE ;
 scalar_t__ ACPI_UINT32_MAX ;
 scalar_t__ acpi_dbg_layer ;
 int acpi_dbg_level ;
 scalar_t__ acpi_gbl_original_dbg_layer ;
 int acpi_gbl_original_dbg_level ;
 scalar_t__ acpi_gbl_trace_dbg_layer ;
 int acpi_gbl_trace_dbg_level ;
 scalar_t__ acpi_gbl_trace_method_name ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;

__attribute__((used)) static void acpi_ps_start_trace(struct acpi_evaluate_info *info)
{
 acpi_status status;

 ACPI_FUNCTION_ENTRY();

 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return;
 }

 if ((!acpi_gbl_trace_method_name) ||
     (acpi_gbl_trace_method_name != info->resolved_node->name.integer)) {
  goto exit;
 }

 acpi_gbl_original_dbg_level = acpi_dbg_level;
 acpi_gbl_original_dbg_layer = acpi_dbg_layer;

 acpi_dbg_level = 0x00FFFFFF;
 acpi_dbg_layer = ACPI_UINT32_MAX;

 if (acpi_gbl_trace_dbg_level) {
  acpi_dbg_level = acpi_gbl_trace_dbg_level;
 }
 if (acpi_gbl_trace_dbg_layer) {
  acpi_dbg_layer = acpi_gbl_trace_dbg_layer;
 }

      exit:
 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
}
