; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_stop.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SCOPE_STOP_SIGTERM = common dso_local global i32 0, align 4
@SCOPE_STOP_SIGKILL = common dso_local global i32 0, align 4
@SCOPE_RUNNING = common dso_local global i32 0, align 4
@SCOPE_ABANDONED = common dso_local global i32 0, align 4
@SCOPE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @scope_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scope_stop(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.TYPE_6__* @SCOPE(i32* %5)
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SCOPE_STOP_SIGTERM, align 4
  %13 = load i32, i32* @SCOPE_STOP_SIGKILL, align 4
  %14 = call %struct.TYPE_6__* @IN_SET(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SCOPE_RUNNING, align 4
  %22 = load i32, i32* @SCOPE_ABANDONED, align 4
  %23 = call %struct.TYPE_6__* @IN_SET(i32 %20, i32 %21, i32 %22)
  %24 = call i32 @assert(%struct.TYPE_6__* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = load i32, i32* @SCOPE_STOP_SIGTERM, align 4
  %27 = load i32, i32* @SCOPE_SUCCESS, align 4
  %28 = call i32 @scope_enter_signal(%struct.TYPE_6__* %25, i32 %26, i32 %27)
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %17, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_6__* @SCOPE(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @IN_SET(i32, i32, i32) #1

declare dso_local i32 @scope_enter_signal(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
