; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_led_ctrl_hauppauge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_led_ctrl_hauppauge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_hdw*, i32)* @pvr2_led_ctrl_hauppauge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_led_ctrl_hauppauge(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %9 = call i32 @pvr2_hdw_gpio_chg_dir(%struct.pvr2_hdw* %8, i32 -1, i32 1153)
  br label %13

10:                                               ; preds = %2
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %12 = call i32 @pvr2_hdw_gpio_chg_dir(%struct.pvr2_hdw* %11, i32 -1, i32 1025)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %15 = call i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw* %14, i32 -1, i32 0)
  ret void
}

declare dso_local i32 @pvr2_hdw_gpio_chg_dir(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
