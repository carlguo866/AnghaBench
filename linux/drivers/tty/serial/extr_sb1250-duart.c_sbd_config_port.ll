; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sbd_port = type { i32 }

@UART_CONFIG_TYPE = common dso_local global i32 0, align 4
@PORT_SB1250_DUART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sbd_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbd_config_port(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbd_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.sbd_port* @to_sport(%struct.uart_port* %6)
  store %struct.sbd_port* %7, %struct.sbd_port** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @UART_CONFIG_TYPE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = call i64 @sbd_request_port(%struct.uart_port* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @PORT_SB1250_DUART, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sbd_port*, %struct.sbd_port** %5, align 8
  %22 = call i32 @sbd_init_port(%struct.sbd_port* %21)
  br label %23

23:                                               ; preds = %16, %17, %2
  ret void
}

declare dso_local %struct.sbd_port* @to_sport(%struct.uart_port*) #1

declare dso_local i64 @sbd_request_port(%struct.uart_port*) #1

declare dso_local i32 @sbd_init_port(%struct.sbd_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
