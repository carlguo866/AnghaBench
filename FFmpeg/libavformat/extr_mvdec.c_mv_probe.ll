; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mvdec.c_mv_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mvdec.c_mv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @AV_RB32(i64 %6)
  %8 = call i64 @MKBETAG(i8 signext 77, i8 signext 79, i8 signext 86, i8 signext 73)
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 4
  %15 = call i32 @AV_RB16(i64 %14)
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @AV_RB32(i64) #1

declare dso_local i64 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @AV_RB16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
