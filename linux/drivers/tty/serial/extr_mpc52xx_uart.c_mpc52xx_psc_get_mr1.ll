; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_psc_get_mr1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc52xx_psc_get_mr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MPC52xx_PSC_SEL_MODE_REG_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mpc52xx_psc_get_mr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_psc_get_mr1(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %3 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %4 = call %struct.TYPE_2__* @PSC(%struct.uart_port* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* @MPC52xx_PSC_SEL_MODE_REG_1, align 4
  %7 = call i32 @out_8(i32* %5, i32 %6)
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call %struct.TYPE_2__* @PSC(%struct.uart_port* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @in_8(i32* %10)
  ret i32 %11
}

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @PSC(%struct.uart_port*) #1

declare dso_local i32 @in_8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
