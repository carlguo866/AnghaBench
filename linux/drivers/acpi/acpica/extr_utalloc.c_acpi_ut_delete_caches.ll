; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utalloc.c_acpi_ut_delete_caches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utalloc.c_acpi_ut_delete_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_namespace_cache = common dso_local global i32* null, align 8
@acpi_gbl_state_cache = common dso_local global i32* null, align 8
@acpi_gbl_operand_cache = common dso_local global i32* null, align 8
@acpi_gbl_ps_node_cache = common dso_local global i32* null, align 8
@acpi_gbl_ps_node_ext_cache = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@acpi_gbl_comment_addr_cache = common dso_local global i32* null, align 8
@acpi_gbl_display_final_mem_stats = common dso_local global i64 0, align 8
@acpi_gbl_file_cache = common dso_local global i32* null, align 8
@acpi_gbl_global_list = common dso_local global i32* null, align 8
@acpi_gbl_ns_node_list = common dso_local global i32* null, align 8
@acpi_gbl_reg_comment_cache = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_delete_caches() #0 {
  %1 = load i32*, i32** @acpi_gbl_namespace_cache, align 8
  %2 = call i32 @acpi_os_delete_cache(i32* %1)
  store i32* null, i32** @acpi_gbl_namespace_cache, align 8
  %3 = load i32*, i32** @acpi_gbl_state_cache, align 8
  %4 = call i32 @acpi_os_delete_cache(i32* %3)
  store i32* null, i32** @acpi_gbl_state_cache, align 8
  %5 = load i32*, i32** @acpi_gbl_operand_cache, align 8
  %6 = call i32 @acpi_os_delete_cache(i32* %5)
  store i32* null, i32** @acpi_gbl_operand_cache, align 8
  %7 = load i32*, i32** @acpi_gbl_ps_node_cache, align 8
  %8 = call i32 @acpi_os_delete_cache(i32* %7)
  store i32* null, i32** @acpi_gbl_ps_node_cache, align 8
  %9 = load i32*, i32** @acpi_gbl_ps_node_ext_cache, align 8
  %10 = call i32 @acpi_os_delete_cache(i32* %9)
  store i32* null, i32** @acpi_gbl_ps_node_ext_cache, align 8
  %11 = load i32, i32* @AE_OK, align 4
  ret i32 %11
}

declare dso_local i32 @acpi_os_delete_cache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
