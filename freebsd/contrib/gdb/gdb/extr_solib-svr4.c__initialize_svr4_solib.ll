; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c__initialize_svr4_solib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-svr4.c__initialize_svr4_solib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@init_fetch_link_map_offsets = common dso_local global i32 0, align 4
@fetch_link_map_offsets_gdbarch_data = common dso_local global i32 0, align 4
@svr4_relocate_section_addresses = common dso_local global i32 0, align 4
@svr4_so_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@svr4_free_so = common dso_local global i32 0, align 4
@svr4_clear_solib = common dso_local global i32 0, align 4
@svr4_solib_create_inferior_hook = common dso_local global i32 0, align 4
@svr4_special_symbol_handling = common dso_local global i32 0, align 4
@svr4_current_sos = common dso_local global i32 0, align 4
@open_symbol_file_object = common dso_local global i32 0, align 4
@svr4_in_dynsym_resolve_code = common dso_local global i32 0, align 4
@current_target_so_ops = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_svr4_solib() #0 {
  %1 = load i32, i32* @init_fetch_link_map_offsets, align 4
  %2 = call i32 @register_gdbarch_data(i32 %1)
  store i32 %2, i32* @fetch_link_map_offsets_gdbarch_data, align 4
  %3 = load i32, i32* @svr4_relocate_section_addresses, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svr4_so_ops, i32 0, i32 7), align 4
  %4 = load i32, i32* @svr4_free_so, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svr4_so_ops, i32 0, i32 6), align 4
  %5 = load i32, i32* @svr4_clear_solib, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svr4_so_ops, i32 0, i32 5), align 4
  %6 = load i32, i32* @svr4_solib_create_inferior_hook, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svr4_so_ops, i32 0, i32 4), align 4
  %7 = load i32, i32* @svr4_special_symbol_handling, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svr4_so_ops, i32 0, i32 3), align 4
  %8 = load i32, i32* @svr4_current_sos, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svr4_so_ops, i32 0, i32 2), align 4
  %9 = load i32, i32* @open_symbol_file_object, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svr4_so_ops, i32 0, i32 1), align 4
  %10 = load i32, i32* @svr4_in_dynsym_resolve_code, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svr4_so_ops, i32 0, i32 0), align 4
  store %struct.TYPE_3__* @svr4_so_ops, %struct.TYPE_3__** @current_target_so_ops, align 8
  ret void
}

declare dso_local i32 @register_gdbarch_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
