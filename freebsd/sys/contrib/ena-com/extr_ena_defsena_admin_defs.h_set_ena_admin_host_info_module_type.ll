; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_defsena_admin_defs.h_set_ena_admin_host_info_module_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_defsena_admin_defs.h_set_ena_admin_host_info_module_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_admin_host_info = type { i32 }

@ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT = common dso_local global i32 0, align 4
@ENA_ADMIN_HOST_INFO_MODULE_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_admin_host_info*, i32)* @set_ena_admin_host_info_module_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ena_admin_host_info_module_type(%struct.ena_admin_host_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_admin_host_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ena_admin_host_info* %0, %struct.ena_admin_host_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT, align 4
  %7 = shl i32 %5, %6
  %8 = load i32, i32* @ENA_ADMIN_HOST_INFO_MODULE_TYPE_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %3, align 8
  %11 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
