; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_set_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i64, i64, i32 }

@AC97_GPIO_STATUS = common dso_local global i32 0, align 4
@WM97XX_GPIO_HIGH = common dso_local global i32 0, align 4
@WM9712_ID2 = common dso_local global i64 0, align 8
@WM97xx_WM1613 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wm97xx_set_gpio(%struct.wm97xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %9 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %12 = load i32, i32* @AC97_GPIO_STATUS, align 4
  %13 = call i32 @wm97xx_reg_read(%struct.wm97xx* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @WM97XX_GPIO_HIGH, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %28 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WM9712_ID2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %34 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WM97xx_WM1613, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %40 = load i32, i32* @AC97_GPIO_STATUS, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 1
  %43 = call i32 @wm97xx_reg_write(%struct.wm97xx* %39, i32 %40, i32 %42)
  br label %49

44:                                               ; preds = %32, %26
  %45 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %46 = load i32, i32* @AC97_GPIO_STATUS, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @wm97xx_reg_write(%struct.wm97xx* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %51 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
