; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2_brender_pix.c_brender_read_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2_brender_pix.c_brender_read_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@brender_read_probe.brender_magic = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 18, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 2], align 16
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @brender_read_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brender_read_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @memcmp(i64 %6, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @brender_read_probe.brender_magic, i64 0, i64 0), i32 64)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 16
  %15 = call i32 @AV_RB32(i64 %14)
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 16
  %22 = call i32 @AV_RB32(i64 %21)
  %23 = icmp ne i32 %22, 61
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %28

25:                                               ; preds = %17, %10
  %26 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %27 = sub nsw i32 %26, 10
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %24, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @memcmp(i64, i32*, i32) #1

declare dso_local i32 @AV_RB32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
