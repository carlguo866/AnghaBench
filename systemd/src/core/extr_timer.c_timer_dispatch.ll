; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_dispatch.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@TIMER_WAITING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Timer elapsed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @timer_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_dispatch(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.TYPE_6__* @TIMER(i8* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %12 = call i32 @assert(%struct.TYPE_6__* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TIMER_WAITING, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = call i32 @UNIT(%struct.TYPE_6__* %20)
  %22 = call i32 @log_unit_debug(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = call i32 @timer_enter_running(%struct.TYPE_6__* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.TYPE_6__* @TIMER(i8*) #1

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @log_unit_debug(i32, i8*) #1

declare dso_local i32 @UNIT(%struct.TYPE_6__*) #1

declare dso_local i32 @timer_enter_running(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
