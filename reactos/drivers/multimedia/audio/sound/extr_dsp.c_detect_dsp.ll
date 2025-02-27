; ModuleID = '/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sound/extr_dsp.c_detect_dsp.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sound/extr_dsp.c_detect_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@base = common dso_local global i32 0, align 4
@SB_TRUE = common dso_local global i64 0, align 8
@SB_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @detect_dsp(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 512, i32* @base, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* @base, align 4
  %6 = icmp slt i32 %5, 640
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = load i32, i32* @base, align 4
  %9 = call i64 @reset_dsp(i32 %8)
  %10 = load i64, i64* @SB_TRUE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i32, i32* @base, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i64, i64* @SB_TRUE, align 8
  store i64 %16, i64* %2, align 8
  br label %23

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @base, align 4
  %20 = add nsw i32 %19, 16
  store i32 %20, i32* @base, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load i64, i64* @SB_FALSE, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %21, %12
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64 @reset_dsp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
