; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_scriplib.c_TokenAvailable.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_scriplib.c_TokenAvailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@scriptline = common dso_local global i32 0, align 4
@script = common dso_local global %struct.TYPE_2__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TokenAvailable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @scriptline, align 4
  store i32 %5, i32* %2, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @qtrue, align 4
  %10 = call i32 @GetToken(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %1, align 4
  br label %24

15:                                               ; preds = %0
  %16 = call i32 (...) @UnGetToken()
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @scriptline, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @qtrue, align 4
  store i32 %21, i32* %1, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %20, %13
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @GetToken(i32) #1

declare dso_local i32 @UnGetToken(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
