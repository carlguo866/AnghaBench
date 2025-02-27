; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_wm8505fb_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_wm8505fb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { i32 }
%struct.wm8505fb_info = type { i64 }

@WMT_GOVR_XPAN = common dso_local global i64 0, align 8
@WMT_GOVR_YPAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @wm8505fb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8505fb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.wm8505fb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %7 = call %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info* %6)
  store %struct.wm8505fb_info* %7, %struct.wm8505fb_info** %5, align 8
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WMT_GOVR_XPAN, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %5, align 8
  %21 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WMT_GOVR_YPAN, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  ret i32 0
}

declare dso_local %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
