; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_deferred_io_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_deferred_io_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.fb_deferred_io* }
%struct.fb_deferred_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @sh_mobile_lcdc_deferred_io_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_deferred_io_touch(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fb_deferred_io*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 1
  %6 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %5, align 8
  store %struct.fb_deferred_io* %6, %struct.fb_deferred_io** %3, align 8
  %7 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %3, align 8
  %8 = icmp ne %struct.fb_deferred_io* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %3, align 8
  %13 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @schedule_delayed_work(i32* %11, i32 %14)
  br label %16

16:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
