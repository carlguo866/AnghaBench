; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl3216_software_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl3216_software_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.is31fl32xx_priv = type { i32 }

@IS31FL3216_CONFIG_SSD_ENABLE = common dso_local global i32 0, align 4
@IS31FL3216_CONFIG_SSD_DISABLE = common dso_local global i32 0, align 4
@IS31FL3216_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.is31fl32xx_priv*, i32)* @is31fl3216_software_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl3216_software_shutdown(%struct.is31fl32xx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.is31fl32xx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.is31fl32xx_priv* %0, %struct.is31fl32xx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @IS31FL3216_CONFIG_SSD_ENABLE, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @IS31FL3216_CONFIG_SSD_DISABLE, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  store i32 %13, i32* %5, align 4
  %14 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %15 = load i32, i32* @IS31FL3216_CONFIG_REG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %14, i32 %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @is31fl32xx_write(%struct.is31fl32xx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
