; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_hw_common_chip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_hw_common_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"bxe_init_hw_common failed rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_init_hw_common_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_init_hw_common_chip(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %6 = call i32 @bxe_init_hw_common(%struct.bxe_softc* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BLOGE(%struct.bxe_softc* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = call i32 @BXE_NOMCP(%struct.bxe_softc* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %20 = call i32 @bxe_common_init_phy(%struct.bxe_softc* %19)
  br label %21

21:                                               ; preds = %18, %14
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @bxe_init_hw_common(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @BXE_NOMCP(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_common_init_phy(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
