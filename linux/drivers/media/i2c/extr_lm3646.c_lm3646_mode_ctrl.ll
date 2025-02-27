; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_mode_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_mode_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3646_flash = type { i32, i32 }

@REG_ENABLE = common dso_local global i32 0, align 4
@MODE_SHDN = common dso_local global i32 0, align 4
@MODE_TORCH = common dso_local global i32 0, align 4
@MODE_FLASH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3646_flash*, i32)* @lm3646_mode_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3646_mode_ctrl(%struct.lm3646_flash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3646_flash*, align 8
  %5 = alloca i32, align 4
  store %struct.lm3646_flash* %0, %struct.lm3646_flash** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %40 [
    i32 129, label %7
    i32 128, label %18
    i32 130, label %29
  ]

7:                                                ; preds = %2
  %8 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %9 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @REG_ENABLE, align 4
  %12 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %13 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MODE_SHDN, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @regmap_write(i32 %10, i32 %11, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %20 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REG_ENABLE, align 4
  %23 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %24 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MODE_TORCH, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @regmap_write(i32 %21, i32 %22, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %31 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @REG_ENABLE, align 4
  %34 = load %struct.lm3646_flash*, %struct.lm3646_flash** %4, align 8
  %35 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MODE_FLASH, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @regmap_write(i32 %32, i32 %33, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %29, %18, %7
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
