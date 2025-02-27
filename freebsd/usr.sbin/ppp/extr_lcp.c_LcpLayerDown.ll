; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_LcpLayerDown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_LcpLayerDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.physical = type { i32 }

@LogLCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: LayerDown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @LcpLayerDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LcpLayerDown(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.physical*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %4 = load %struct.fsm*, %struct.fsm** %2, align 8
  %5 = getelementptr inbounds %struct.fsm, %struct.fsm* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call %struct.physical* @link2physical(%struct.TYPE_2__* %6)
  store %struct.physical* %7, %struct.physical** %3, align 8
  %8 = load i32, i32* @LogLCP, align 4
  %9 = load %struct.fsm*, %struct.fsm** %2, align 8
  %10 = getelementptr inbounds %struct.fsm, %struct.fsm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @log_Printf(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.physical*, %struct.physical** %3, align 8
  %16 = getelementptr inbounds %struct.physical, %struct.physical* %15, i32 0, i32 0
  %17 = call i32 @hdlc_StopTimer(i32* %16)
  %18 = load %struct.physical*, %struct.physical** %3, align 8
  %19 = call i32 @lqr_StopTimer(%struct.physical* %18)
  %20 = load %struct.fsm*, %struct.fsm** %2, align 8
  %21 = call i32 @fsm2lcp(%struct.fsm* %20)
  %22 = call i32 @lcp_Setup(i32 %21, i32 0)
  ret void
}

declare dso_local %struct.physical* @link2physical(%struct.TYPE_2__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @hdlc_StopTimer(i32*) #1

declare dso_local i32 @lqr_StopTimer(%struct.physical*) #1

declare dso_local i32 @lcp_Setup(i32, i32) #1

declare dso_local i32 @fsm2lcp(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
