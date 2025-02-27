; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorInitSystem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorInitSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@monitor = common dso_local global %struct.TYPE_4__* null, align 8
@monitorCheckDiskUsage = common dso_local global i32 0, align 4
@CHECK_INTERVAL = common dso_local global i32 0, align 4
@tscTmr = common dso_local global i32 0, align 4
@monitorStartSystem = common dso_local global i32 0, align 4
@startMonitor = common dso_local global i32 0, align 4
@monitorStopSystem = common dso_local global i32 0, align 4
@stopMonitor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @monitorInitSystem() #0 {
  %1 = call i64 @malloc(i32 4)
  %2 = inttoptr i64 %1 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** @monitor, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @monitor, align 8
  %4 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 4)
  %5 = load i32, i32* @monitorCheckDiskUsage, align 4
  %6 = load i32, i32* @CHECK_INTERVAL, align 4
  %7 = load i32, i32* @tscTmr, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @monitor, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @taosTmrReset(i32 %5, i32 %6, i32* null, i32 %7, i32* %9)
  %11 = load i32, i32* @monitorStartSystem, align 4
  store i32 %11, i32* @startMonitor, align 4
  %12 = load i32, i32* @monitorStopSystem, align 4
  store i32 %12, i32* @stopMonitor, align 4
  ret i32 0
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @taosTmrReset(i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
