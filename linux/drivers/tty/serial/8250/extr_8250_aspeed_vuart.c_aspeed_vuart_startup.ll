; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.aspeed_vuart* }
%struct.aspeed_vuart = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @aspeed_vuart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_vuart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca %struct.aspeed_vuart*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %7)
  store %struct.uart_8250_port* %8, %struct.uart_8250_port** %4, align 8
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %11, align 8
  store %struct.aspeed_vuart* %12, %struct.aspeed_vuart** %5, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = call i32 @serial8250_do_startup(%struct.uart_port* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %21 = call i32 @aspeed_vuart_set_host_tx_discard(%struct.aspeed_vuart* %20, i32 0)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_do_startup(%struct.uart_port*) #1

declare dso_local i32 @aspeed_vuart_set_host_tx_discard(%struct.aspeed_vuart*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
