; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_remove_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_remove_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s deleted target ID: 0x%x\0A\00", align 1
@MRSAS_MAX_PD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"System PD\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"VD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrsas_softc*, i64)* @mrsas_remove_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_remove_target(%struct.mrsas_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %6 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 65535, i32* %10, align 4
  %11 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @MRSAS_MAX_PD, align 8
  %16 = icmp ult i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @MRSAS_MAX_PD, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  br label %28

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @MRSAS_MAX_PD, align 8
  %27 = sub i64 %25, %26
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i64 [ %23, %22 ], [ %27, %24 ]
  %30 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %18, i64 %29)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
