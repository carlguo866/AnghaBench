; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/psci/extr_psci.c__psci_get_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/psci/extr_psci.c__psci_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psci_softc = type { i64* }

@PSCI_FN_VERSION = common dso_local global i64 0, align 8
@PSCI_RETVAL_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psci_softc*)* @_psci_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_psci_get_version(%struct.psci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psci_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.psci_softc* %0, %struct.psci_softc** %3, align 8
  %5 = load %struct.psci_softc*, %struct.psci_softc** %3, align 8
  %6 = getelementptr inbounds %struct.psci_softc, %struct.psci_softc* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @PSCI_FN_VERSION, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @psci_call(i64 %14, i32 0, i32 0, i32 0)
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PSCI_RETVAL_NOT_SUPPORTED, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @psci_call(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
