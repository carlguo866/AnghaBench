; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@URMS_URDCD = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@URMS_URDSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@URMS_URCTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@URMS_URRI = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @ks8695uart_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695uart_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call i32 @UART_GET_MSR(%struct.uart_port* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @URMS_URDCD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @TIOCM_CAR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @URMS_URDSR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @TIOCM_DSR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @URMS_URCTS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @TIOCM_CTS, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @URMS_URRI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @TIOCM_RI, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @UART_GET_MSR(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
