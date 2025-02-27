; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_unthrottle_exp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_unthrottle_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_vuart = type { i32, %struct.uart_8250_port* }
%struct.uart_8250_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@unthrottle_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@unthrottle_timeout = common dso_local global i64 0, align 8
@vuart = common dso_local global %struct.aspeed_vuart* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @aspeed_vuart_unthrottle_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_vuart_unthrottle_exp(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.aspeed_vuart*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %3, align 8
  %6 = ptrtoint %struct.aspeed_vuart* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @unthrottle_timer, align 4
  %9 = call %struct.aspeed_vuart* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.aspeed_vuart* %9, %struct.aspeed_vuart** %3, align 8
  %10 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %3, align 8
  %11 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %10, i32 0, i32 1
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %11, align 8
  store %struct.uart_8250_port* %12, %struct.uart_8250_port** %4, align 8
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @tty_buffer_space_avail(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %3, align 8
  %22 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %21, i32 0, i32 0
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* @unthrottle_timeout, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @mod_timer(i32* %22, i64 %25)
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %28, i32 0, i32 0
  %30 = call i32 @aspeed_vuart_unthrottle(%struct.TYPE_4__* %29)
  br label %31

31:                                               ; preds = %27, %20
  ret void
}

declare dso_local %struct.aspeed_vuart* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @tty_buffer_space_avail(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @aspeed_vuart_unthrottle(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
