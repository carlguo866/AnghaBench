; ModuleID = '/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_test_by_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_test_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@s_unity_tests_first = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unity_run_test_by_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_unity_tests_first, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %3, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strcmp(i32 %11, i8* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 @unity_run_single_test(%struct.TYPE_4__* %16)
  br label %18

18:                                               ; preds = %15, %8
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %3, align 8
  br label %5

23:                                               ; preds = %5
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @unity_run_single_test(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
