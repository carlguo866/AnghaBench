; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_perf_diff__formula.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_perf_diff__formula.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32 }

@compute = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_diff__formula(i8* %0, i64 %1, %struct.hist_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hist_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hist_entry* %2, %struct.hist_entry** %7, align 8
  %8 = load i32, i32* @compute, align 4
  switch i32 %8, label %24 [
    i32 130, label %9
    i32 129, label %14
    i32 128, label %19
  ]

9:                                                ; preds = %3
  %10 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @formula_delta(%struct.hist_entry* %10, i8* %11, i64 %12)
  store i32 %13, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @formula_ratio(%struct.hist_entry* %15, i8* %16, i64 %17)
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @formula_wdiff(%struct.hist_entry* %20, i8* %21, i64 %22)
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %3
  %25 = call i32 @BUG_ON(i32 1)
  br label %26

26:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %19, %14, %9
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @formula_delta(%struct.hist_entry*, i8*, i64) #1

declare dso_local i32 @formula_ratio(%struct.hist_entry*, i8*, i64) #1

declare dso_local i32 @formula_wdiff(%struct.hist_entry*, i8*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
