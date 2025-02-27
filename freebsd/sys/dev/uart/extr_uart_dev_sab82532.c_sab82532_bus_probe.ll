; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SAB_VSTR = common dso_local global i32 0, align 4
@SAB_VSTR_VMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"v2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"v3.2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"v4?\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"SAB 82532 %s, channel %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sab82532_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_bus_probe(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 5
  %10 = call i32 @sab82532_probe(%struct.TYPE_3__* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 0
  store i32 32, i32* %17, align 4
  %18 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %18, i32 0, i32 1
  store i32 32, i32* %19, align 4
  %20 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = add nsw i32 %24, 65
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  %27 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 5
  %29 = load i32, i32* @SAB_VSTR, align 4
  %30 = call i32 @uart_getreg(%struct.TYPE_3__* %28, i32 %29)
  %31 = load i32, i32* @SAB_VSTR_VMASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %40 [
    i32 130, label %33
    i32 129, label %34
    i32 128, label %35
  ]

33:                                               ; preds = %15
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %41

34:                                               ; preds = %15
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %41

35:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %36 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %37 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %36, i32 0, i32 4
  store i32 0, i32* %37, align 4
  %38 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  br label %41

40:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %41

41:                                               ; preds = %40, %35, %34, %33
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %7, align 1
  %45 = call i32 @snprintf(i8* %42, i32 80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %43, i8 signext %44)
  %46 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %50 = call i32 @device_set_desc_copy(i32 %48, i8* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @sab82532_probe(%struct.TYPE_3__*) #1

declare dso_local i32 @uart_getreg(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8 signext) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
