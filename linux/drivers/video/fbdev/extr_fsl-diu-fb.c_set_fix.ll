; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_set_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_set_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.mfb_info*, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo }
%struct.mfb_info = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_fix_screeninfo = type { i32, i32, i32, i32, i32, i32, i32 }

@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @set_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fix(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fb_fix_screeninfo*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.mfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 2
  store %struct.fb_fix_screeninfo* %7, %struct.fb_fix_screeninfo** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  store %struct.fb_var_screeninfo* %9, %struct.fb_var_screeninfo** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.mfb_info*, %struct.mfb_info** %11, align 8
  store %struct.mfb_info* %12, %struct.mfb_info** %5, align 8
  %13 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %14 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %17 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strncpy(i32 %15, i32 %18, i32 4)
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = sdiv i32 %26, 8
  %28 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %29 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %31 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %32 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @FB_ACCEL_NONE, align 4
  %34 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %37 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %38 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %42 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  ret void
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
