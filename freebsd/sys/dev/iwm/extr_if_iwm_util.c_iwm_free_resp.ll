; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.c_iwm_free_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.c_iwm_free_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_host_cmd = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"already freed\00", align 1
@IWM_CMD_WANT_SKB = common dso_local global i32 0, align 4
@IWM_CMD_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid flags\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwm_free_resp(%struct.iwm_softc* %0, %struct.iwm_host_cmd* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_host_cmd*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_host_cmd* %1, %struct.iwm_host_cmd** %4, align 8
  %5 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %6 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, -1
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.iwm_host_cmd*, %struct.iwm_host_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IWM_CMD_WANT_SKB, align 4
  %15 = load i32, i32* @IWM_CMD_SYNC, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @IWM_CMD_WANT_SKB, align 4
  %19 = load i32, i32* @IWM_CMD_SYNC, align 4
  %20 = or i32 %18, %19
  %21 = icmp eq i32 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %25 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  %26 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %27 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %26, i32 0, i32 0
  %28 = call i32 @wakeup(i32* %27)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
