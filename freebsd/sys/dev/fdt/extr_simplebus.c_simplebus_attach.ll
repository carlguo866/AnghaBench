; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simplebus.c_simplebus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simplebus.c_simplebus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplebus_softc = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"could not get ranges\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @simplebus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simplebus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.simplebus_softc*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.simplebus_softc* @device_get_softc(i32 %6)
  store %struct.simplebus_softc* %7, %struct.simplebus_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @simplebus_init(i32 %8, i32 0)
  %10 = load %struct.simplebus_softc*, %struct.simplebus_softc** %4, align 8
  %11 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.simplebus_softc*, %struct.simplebus_softc** %4, align 8
  %14 = call i64 @simplebus_fill_ranges(i32 %12, %struct.simplebus_softc* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.simplebus_softc*, %struct.simplebus_softc** %4, align 8
  %22 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @OF_child(i32 %23)
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %32, %20
  %26 = load i64, i64* %5, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @simplebus_add_device(i32 %29, i64 %30, i32 0, i32* null, i32 -1, i32* null)
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @OF_peer(i64 %33)
  store i64 %34, i64* %5, align 8
  br label %25

35:                                               ; preds = %25
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @bus_generic_attach(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.simplebus_softc* @device_get_softc(i32) #1

declare dso_local i32 @simplebus_init(i32, i32) #1

declare dso_local i64 @simplebus_fill_ranges(i32, %struct.simplebus_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @OF_child(i32) #1

declare dso_local i32 @simplebus_add_device(i32, i64, i32, i32*, i32, i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
