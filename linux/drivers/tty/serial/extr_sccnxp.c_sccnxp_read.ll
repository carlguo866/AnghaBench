; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, i32 }
%struct.sccnxp_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @sccnxp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sccnxp_read(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sccnxp_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.sccnxp_port* @dev_get_drvdata(i32 %9)
  store %struct.sccnxp_port* %10, %struct.sccnxp_port** %5, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %13, %19
  %21 = call i32 @readb(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %23 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ndelay(i32 %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.sccnxp_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
