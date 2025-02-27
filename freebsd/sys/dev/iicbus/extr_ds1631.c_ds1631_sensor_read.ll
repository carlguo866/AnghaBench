; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1631.c_ds1631_sensor_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1631.c_ds1631_sensor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1631_softc = type { i32, i32, i32 }

@DS1631_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ds1631 read TEMP failed: %x\0A\00", align 1
@ZERO_C_TO_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds1631_softc*)* @ds1631_sensor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1631_sensor_read(%struct.ds1631_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ds1631_softc*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ds1631_softc* %0, %struct.ds1631_softc** %3, align 8
  %7 = load %struct.ds1631_softc*, %struct.ds1631_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.ds1631_softc*, %struct.ds1631_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ds1631_softc*, %struct.ds1631_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ds1631_init(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.ds1631_softc*, %struct.ds1631_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ds1631_softc*, %struct.ds1631_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DS1631_TEMP, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %28 = call i32 @ds1631_read_2(i32 %22, i32 %25, i32 %26, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.ds1631_softc*, %struct.ds1631_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ds1631_softc, %struct.ds1631_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %2, align 4
  br label %46

37:                                               ; preds = %19
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 6
  %42 = mul nsw i32 %41, 25
  %43 = sdiv i32 %42, 10
  %44 = load i32, i32* @ZERO_C_TO_K, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %37, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ds1631_init(i32, i32) #1

declare dso_local i32 @ds1631_read_2(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
