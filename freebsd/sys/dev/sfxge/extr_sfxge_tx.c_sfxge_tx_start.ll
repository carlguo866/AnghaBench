; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_tx_start(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %6 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %7 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @efx_tx_init(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sfxge_tx_qstart(%struct.sfxge_softc* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %31

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %14

30:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %46

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @sfxge_tx_qstop(%struct.sfxge_softc* %37, i32 %38)
  br label %32

40:                                               ; preds = %32
  %41 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %42 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @efx_tx_fini(i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %30, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @efx_tx_init(i32) #1

declare dso_local i32 @sfxge_tx_qstart(%struct.sfxge_softc*, i32) #1

declare dso_local i32 @sfxge_tx_qstop(%struct.sfxge_softc*, i32) #1

declare dso_local i32 @efx_tx_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
