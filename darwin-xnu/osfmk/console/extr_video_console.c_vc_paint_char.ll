; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_paint_char.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_paint_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8, i32, i8, i32)* @vc_paint_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_paint_char(i32 %0, i32 %1, i8 zeroext %2, i32 %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  br label %42

16:                                               ; preds = %6
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  switch i32 %17, label %42 [
    i32 8, label %18
    i32 16, label %26
    i32 30, label %34
    i32 32, label %34
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i8, i8* %9, align 1
  %22 = load i32, i32* %10, align 4
  %23 = load i8, i8* %11, align 1
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @vc_paint_char_8(i32 %19, i32 %20, i8 zeroext %21, i32 %22, i8 zeroext %23, i32 %24)
  br label %42

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i8, i8* %9, align 1
  %30 = load i32, i32* %10, align 4
  %31 = load i8, i8* %11, align 1
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @vc_paint_char_16(i32 %27, i32 %28, i8 zeroext %29, i32 %30, i8 zeroext %31, i32 %32)
  br label %42

34:                                               ; preds = %16, %16
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i8, i8* %9, align 1
  %38 = load i32, i32* %10, align 4
  %39 = load i8, i8* %11, align 1
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @vc_paint_char_32(i32 %35, i32 %36, i8 zeroext %37, i32 %38, i8 zeroext %39, i32 %40)
  br label %42

42:                                               ; preds = %15, %16, %34, %26, %18
  ret void
}

declare dso_local i32 @vc_paint_char_8(i32, i32, i8 zeroext, i32, i8 zeroext, i32) #1

declare dso_local i32 @vc_paint_char_16(i32, i32, i8 zeroext, i32, i8 zeroext, i32) #1

declare dso_local i32 @vc_paint_char_32(i32, i32, i8 zeroext, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
