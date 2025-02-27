; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_serdes_init_1g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_serdes_init_1g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@ENET_SERDES_1_PLL_CFG = common dso_local global i32 0, align 4
@ENET_SERDES_PLL_FBDIV2 = common dso_local global i32 0, align 4
@ENET_SERDES_PLL_HRATE0 = common dso_local global i32 0, align 4
@ENET_SERDES_PLL_HRATE1 = common dso_local global i32 0, align 4
@ENET_SERDES_PLL_HRATE2 = common dso_local global i32 0, align 4
@ENET_SERDES_PLL_HRATE3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @serdes_init_1g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_init_1g(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %5 = load i32, i32* @ENET_SERDES_1_PLL_CFG, align 4
  %6 = call i32 @nr64(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @ENET_SERDES_PLL_FBDIV2, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.niu*, %struct.niu** %3, align 8
  %12 = getelementptr inbounds %struct.niu, %struct.niu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 0, label %14
    i32 1, label %18
    i32 2, label %22
    i32 3, label %26
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @ENET_SERDES_PLL_HRATE0, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load i32, i32* @ENET_SERDES_PLL_HRATE1, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load i32, i32* @ENET_SERDES_PLL_HRATE2, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @ENET_SERDES_PLL_HRATE3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %26, %22, %18, %14
  %34 = load i32, i32* @ENET_SERDES_1_PLL_CFG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @nw64(i32 %34, i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
