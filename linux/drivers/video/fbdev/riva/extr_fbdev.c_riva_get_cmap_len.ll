; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_get_cmap_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_get_cmap_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*)* @riva_get_cmap_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riva_get_cmap_len(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca %struct.fb_var_screeninfo*, align 8
  %3 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %2, align 8
  store i32 256, i32* %3, align 4
  %4 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %5 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %11 [
    i32 8, label %8
    i32 5, label %9
    i32 6, label %10
  ]

8:                                                ; preds = %1
  store i32 256, i32* %3, align 4
  br label %12

9:                                                ; preds = %1
  store i32 32, i32* %3, align 4
  br label %12

10:                                               ; preds = %1
  store i32 64, i32* %3, align 4
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %10, %9, %8
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
