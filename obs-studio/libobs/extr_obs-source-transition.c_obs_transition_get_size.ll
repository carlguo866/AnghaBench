; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_get_size.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"obs_transition_set_size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_transition_get_size(%struct.TYPE_4__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = call i32 @transition_valid(%struct.TYPE_4__* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64*, i64** %5, align 8
  store i64 0, i64* %11, align 8
  %12 = load i64*, i64** %6, align 8
  store i64 0, i64* %12, align 8
  br label %22

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %5, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @transition_valid(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
