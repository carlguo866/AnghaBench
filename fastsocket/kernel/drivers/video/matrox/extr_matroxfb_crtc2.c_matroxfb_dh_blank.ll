; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @matroxfb_dh_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroxfb_dh_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %7 [
    i32 1, label %6
    i32 2, label %6
    i32 3, label %6
    i32 4, label %6
  ]

6:                                                ; preds = %2, %2, %2, %2
  br label %7

7:                                                ; preds = %2, %6
  br label %8

8:                                                ; preds = %7
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
