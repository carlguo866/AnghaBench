; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32 }

@CSR0 = common dso_local global i32 0, align 4
@EN_INT = common dso_local global i32 0, align 4
@BU_EMP = common dso_local global i32 0, align 4
@VALID_DECODER = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbni_probe(%struct.sbni_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbni_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.sbni_softc* %0, %struct.sbni_softc** %3, align 8
  %5 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %6 = load i32, i32* @CSR0, align 4
  %7 = call i32 @sbni_inb(%struct.sbni_softc* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 255
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i32, i32* @EN_INT, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BU_EMP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* @EN_INT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %13
  %27 = load i32, i32* @VALID_DECODER, align 4
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 4
  %30 = shl i32 1, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %37

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %10, %1
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
