; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_lcd_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_lcd_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.clps711x_fb_info = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @clps711x_lcd_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711x_lcd_set_power(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clps711x_fb_info*, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %8 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %7, i32 0, i32 0
  %9 = call %struct.clps711x_fb_info* @dev_get_drvdata(i32* %8)
  store %struct.clps711x_fb_info* %9, %struct.clps711x_fb_info** %6, align 8
  %10 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %6, align 8
  %11 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @IS_ERR_OR_NULL(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %6, align 8
  %21 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @regulator_is_enabled(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %6, align 8
  %27 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regulator_enable(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %19
  br label %43

31:                                               ; preds = %15
  %32 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %6, align 8
  %33 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @regulator_is_enabled(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %6, align 8
  %39 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_disable(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %37, %25
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.clps711x_fb_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i64 @regulator_is_enabled(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
