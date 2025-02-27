; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac_mii_acc.c_fman_memac_mii_write_phy_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac_mii_acc.c_fman_memac_mii_write_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_mii_access_mem_map = type { i32 }

@E_ENET_SPEED_10000 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_memac_mii_write_phy_reg(%struct.memac_mii_access_mem_map* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.memac_mii_access_mem_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.memac_mii_access_mem_map* %0, %struct.memac_mii_access_mem_map** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @E_ENET_SPEED_10000, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @write_phy_reg_10g(%struct.memac_mii_access_mem_map* %15, i32 %16, i32 %17, i32 %18)
  br label %26

20:                                               ; preds = %5
  %21 = load %struct.memac_mii_access_mem_map*, %struct.memac_mii_access_mem_map** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @write_phy_reg_1g(%struct.memac_mii_access_mem_map* %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  ret i32 0
}

declare dso_local i32 @write_phy_reg_10g(%struct.memac_mii_access_mem_map*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg_1g(%struct.memac_mii_access_mem_map*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
