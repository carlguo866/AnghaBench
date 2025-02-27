; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c___ip22zilog_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c___ip22zilog_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_ip22zilog_port = type { i32*, i32, i32 }
%struct.zilog_channel = type { i32 }

@R9 = common dso_local global i64 0, align 8
@RxENAB = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8
@TxENAB = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@INT_ALL_Rx = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_ip22zilog_port*)* @__ip22zilog_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip22zilog_startup(%struct.uart_ip22zilog_port* %0) #0 {
  %2 = alloca %struct.uart_ip22zilog_port*, align 8
  %3 = alloca %struct.zilog_channel*, align 8
  store %struct.uart_ip22zilog_port* %0, %struct.uart_ip22zilog_port** %2, align 8
  %4 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %4, i32 0, i32 2
  %6 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(i32* %5)
  store %struct.zilog_channel* %6, %struct.zilog_channel** %3, align 8
  %7 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %8 = call i32 @__ip22zilog_reset(%struct.uart_ip22zilog_port* %7)
  %9 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %10 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @__load_zsregs(%struct.zilog_channel* %9, i32* %12)
  %14 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %15 = load i64, i64* @R9, align 8
  %16 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @R9, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @write_zsreg(%struct.zilog_channel* %14, i64 %15, i32 %21)
  %23 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %24 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %23, i32 0, i32 0
  %25 = call i32 @readb(i32* %24)
  %26 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @RxENAB, align 4
  %29 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @R3, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %28
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @TxENAB, align 4
  %37 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @R5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %36
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @EXT_INT_ENAB, align 4
  %45 = load i32, i32* @INT_ALL_Rx, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @TxINT_ENAB, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @R1, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %48
  store i32 %55, i32* %53, align 4
  %56 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %2, align 8
  %57 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %58 = call i32 @ip22zilog_maybe_update_regs(%struct.uart_ip22zilog_port* %56, %struct.zilog_channel* %57)
  ret void
}

declare dso_local %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(i32*) #1

declare dso_local i32 @__ip22zilog_reset(%struct.uart_ip22zilog_port*) #1

declare dso_local i32 @__load_zsregs(%struct.zilog_channel*, i32*) #1

declare dso_local i32 @write_zsreg(%struct.zilog_channel*, i64, i32) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @ip22zilog_maybe_update_regs(%struct.uart_ip22zilog_port*, %struct.zilog_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
