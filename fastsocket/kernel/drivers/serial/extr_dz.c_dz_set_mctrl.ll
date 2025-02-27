; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_dz.c_dz_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_dz.c_dz_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.dz_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DZ_MODEM = common dso_local global i64 0, align 8
@DZ_TCR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@DZ_MODEM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @dz_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dz_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dz_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.dz_port* @to_dport(%struct.uart_port* %7)
  store %struct.dz_port* %8, %struct.dz_port** %5, align 8
  %9 = load %struct.dz_port*, %struct.dz_port** %5, align 8
  %10 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DZ_MODEM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.dz_port*, %struct.dz_port** %5, align 8
  %17 = load i32, i32* @DZ_TCR, align 4
  %18 = call i32 @dz_in(%struct.dz_port* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TIOCM_DTR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i32, i32* @DZ_MODEM_DTR, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %15
  %29 = load i32, i32* @DZ_MODEM_DTR, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.dz_port*, %struct.dz_port** %5, align 8
  %34 = load i32, i32* @DZ_TCR, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dz_out(%struct.dz_port* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %2
  ret void
}

declare dso_local %struct.dz_port* @to_dport(%struct.uart_port*) #1

declare dso_local i32 @dz_in(%struct.dz_port*, i32) #1

declare dso_local i32 @dz_out(%struct.dz_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
