; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_operation_to_signal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_operation_to_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"KillOperation unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @operation_to_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @operation_to_signal(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = call i32 @assert(%struct.TYPE_5__* %8)
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %30 [
    i32 130, label %11
    i32 129, label %11
    i32 131, label %16
    i32 132, label %20
    i32 128, label %25
  ]

11:                                               ; preds = %3, %3
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = call i32 @restart_kill_signal(%struct.TYPE_5__* %18)
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  store i32 1, i32* %21, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  store i32 1, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %3
  %31 = call i32 @assert_not_reached(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %11, %16, %20, %25, %30
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @restart_kill_signal(%struct.TYPE_5__*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
