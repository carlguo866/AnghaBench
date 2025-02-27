; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_supported_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_supported_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SKY2_HW_GIGABIT = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_hw*)* @sky2_supported_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_supported_modes(%struct.sky2_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  %5 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %6 = call i64 @sky2_is_copper(%struct.sky2_hw* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %10 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %17 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SKY2_HW_GIGABIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %24 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %22, %8
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %32 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @sky2_is_copper(%struct.sky2_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
