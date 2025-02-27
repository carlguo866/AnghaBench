; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atpic_softc = type { i32* }

@ATPIC_SLAVE = common dso_local global i64 0, align 8
@ATPIC_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @atpic_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atpic_mask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.atpic_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.atpic_softc* @device_get_softc(i32 %6)
  store %struct.atpic_softc* %7, %struct.atpic_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 7
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 8
  %13 = shl i32 1, %12
  %14 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %15 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @ATPIC_SLAVE, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %13
  store i32 %20, i32* %18, align 4
  %21 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %22 = load i64, i64* @ATPIC_SLAVE, align 8
  %23 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %24 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @ATPIC_SLAVE, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @atpic_write(%struct.atpic_softc* %21, i64 %22, i32 1, i32 %28)
  br label %49

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %34 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @ATPIC_MASTER, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %32
  store i32 %39, i32* %37, align 4
  %40 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %41 = load i64, i64* @ATPIC_MASTER, align 8
  %42 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %43 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @ATPIC_MASTER, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @atpic_write(%struct.atpic_softc* %40, i64 %41, i32 1, i32 %47)
  br label %49

49:                                               ; preds = %30, %10
  ret void
}

declare dso_local %struct.atpic_softc* @device_get_softc(i32) #1

declare dso_local i32 @atpic_write(%struct.atpic_softc*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
