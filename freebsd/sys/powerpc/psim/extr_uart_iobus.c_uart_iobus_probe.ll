; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_uart_iobus.c_uart_iobus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_uart_iobus.c_uart_iobus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"com\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@uart_ns8250_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PSIM serial port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_iobus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_iobus_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @iobus_get_name(i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strncmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.uart_softc* @device_get_softc(i32 %14)
  store %struct.uart_softc* %15, %struct.uart_softc** %4, align 8
  %16 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 0
  store i32* @uart_ns8250_class, i32** %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_set_desc(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @uart_bus_probe(i32 %20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %13, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i8* @iobus_get_name(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
