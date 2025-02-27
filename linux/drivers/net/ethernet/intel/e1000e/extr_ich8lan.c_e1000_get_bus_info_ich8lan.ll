; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_get_bus_info_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_get_bus_info_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_bus_info }
%struct.e1000_bus_info = type { i64 }

@e1000_bus_width_unknown = common dso_local global i64 0, align 8
@e1000_bus_width_pcie_x1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_get_bus_info_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_bus_info_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_bus_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_bus_info* %6, %struct.e1000_bus_info** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = call i32 @e1000e_get_bus_info_pcie(%struct.e1000_hw* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_bus_width_unknown, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i64, i64* @e1000_bus_width_pcie_x1, align 8
  %16 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @e1000e_get_bus_info_pcie(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
