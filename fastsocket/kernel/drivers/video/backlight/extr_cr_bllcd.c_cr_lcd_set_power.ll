; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_cr_bllcd.c_cr_lcd_set_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_cr_bllcd.c_cr_lcd_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @cr_lcd_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr_lcd_set_power(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @cr_panel_on()
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @cr_panel_off()
  br label %16

16:                                               ; preds = %14, %10
  ret i32 0
}

declare dso_local i32 @cr_panel_on(...) #1

declare dso_local i32 @cr_panel_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
