; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_supported_sfp_modules_X550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_supported_sfp_modules_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*)* @ixgbe_supported_sfp_modules_X550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_supported_sfp_modules_X550em(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %17 [
    i32 131, label %10
    i32 133, label %12
    i32 132, label %12
    i32 130, label %14
    i32 129, label %14
    i32 135, label %14
    i32 134, label %14
    i32 137, label %14
    i32 136, label %14
    i32 139, label %14
    i32 138, label %14
    i32 128, label %16
    i32 141, label %16
    i32 140, label %16
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @IXGBE_ERR_SFP_NOT_PRESENT, align 4
  store i32 %11, i32* %3, align 4
  br label %20

12:                                               ; preds = %2, %2
  %13 = load i32*, i32** %5, align 8
  store i32 1, i32* %13, align 4
  br label %19

14:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  br label %19

16:                                               ; preds = %2, %2, %2
  br label %17

17:                                               ; preds = %2, %16
  %18 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %18, i32* %3, align 4
  br label %20

19:                                               ; preds = %14, %12
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %17, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
