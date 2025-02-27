; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_release_simq_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_release_simq_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mprsas_softc = type { i32, i32, i32 }

@MPRSAS_QUEUE_FROZEN = common dso_local global i32 0, align 4
@MPR_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unfreezing SIM queue\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mprsas_release_simq_reinit(%struct.mprsas_softc* %0) #0 {
  %2 = alloca %struct.mprsas_softc*, align 8
  store %struct.mprsas_softc* %0, %struct.mprsas_softc** %2, align 8
  %3 = load %struct.mprsas_softc*, %struct.mprsas_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MPRSAS_QUEUE_FROZEN, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @MPRSAS_QUEUE_FROZEN, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.mprsas_softc*, %struct.mprsas_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.mprsas_softc*, %struct.mprsas_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xpt_release_simq(i32 %18, i32 1)
  %20 = load %struct.mprsas_softc*, %struct.mprsas_softc** %2, align 8
  %21 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MPR_INFO, align 4
  %24 = call i32 @mpr_dprint(i32 %22, i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @mpr_dprint(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
