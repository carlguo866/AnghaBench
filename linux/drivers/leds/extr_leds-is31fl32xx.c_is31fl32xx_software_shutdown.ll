; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_software_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_software_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.is31fl32xx_priv = type { %struct.is31fl32xx_chipdef* }
%struct.is31fl32xx_chipdef = type { i64, {}* }

@IS31FL32XX_REG_NONE = common dso_local global i64 0, align 8
@IS31FL32XX_SHUTDOWN_SSD_ENABLE = common dso_local global i32 0, align 4
@IS31FL32XX_SHUTDOWN_SSD_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.is31fl32xx_priv*, i32)* @is31fl32xx_software_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl32xx_software_shutdown(%struct.is31fl32xx_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.is31fl32xx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.is31fl32xx_chipdef*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.is31fl32xx_priv* %0, %struct.is31fl32xx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %4, align 8
  %10 = getelementptr inbounds %struct.is31fl32xx_priv, %struct.is31fl32xx_priv* %9, i32 0, i32 0
  %11 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %10, align 8
  store %struct.is31fl32xx_chipdef* %11, %struct.is31fl32xx_chipdef** %6, align 8
  %12 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %6, align 8
  %13 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IS31FL32XX_REG_NONE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @IS31FL32XX_SHUTDOWN_SSD_ENABLE, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @IS31FL32XX_SHUTDOWN_SSD_DISABLE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %8, align 4
  %26 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %4, align 8
  %27 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %6, align 8
  %28 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %26, i64 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %6, align 8
  %39 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %38, i32 0, i32 1
  %40 = bitcast {}** %39 to i32 (%struct.is31fl32xx_priv*, i32)**
  %41 = load i32 (%struct.is31fl32xx_priv*, i32)*, i32 (%struct.is31fl32xx_priv*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.is31fl32xx_priv*, i32)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %6, align 8
  %45 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %44, i32 0, i32 1
  %46 = bitcast {}** %45 to i32 (%struct.is31fl32xx_priv*, i32)**
  %47 = load i32 (%struct.is31fl32xx_priv*, i32)*, i32 (%struct.is31fl32xx_priv*, i32)** %46, align 8
  %48 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 %47(%struct.is31fl32xx_priv* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %43, %34
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @is31fl32xx_write(%struct.is31fl32xx_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
