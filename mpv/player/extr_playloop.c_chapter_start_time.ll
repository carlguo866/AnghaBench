; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_chapter_start_time.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_chapter_start_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @chapter_start_time(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %29

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  store double %26, double* %3, align 8
  br label %29

27:                                               ; preds = %12, %9
  %28 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %28, double* %3, align 8
  br label %29

29:                                               ; preds = %27, %18, %8
  %30 = load double, double* %3, align 8
  ret double %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
