; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_STATE_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.aac_softc* @device_get_softc(i32 %4)
  store %struct.aac_softc* %5, %struct.aac_softc** %3, align 8
  %6 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %7 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %8 = call i32 @fwprintf(%struct.aac_softc* %6, i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @AAC_STATE_SUSPEND, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %16 = call i32 @AAC_UNMASK_INTERRUPTS(%struct.aac_softc* %15)
  ret i32 0
}

declare dso_local %struct.aac_softc* @device_get_softc(i32) #1

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @AAC_UNMASK_INTERRUPTS(%struct.aac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
