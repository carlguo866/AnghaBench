; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_serial_netx_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_serial_netx_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.netx_port = type { i32 }

@netx_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @serial_netx_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_netx_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netx_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.netx_port* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.netx_port* %7, %struct.netx_port** %5, align 8
  %8 = load %struct.netx_port*, %struct.netx_port** %5, align 8
  %9 = icmp ne %struct.netx_port* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.netx_port*, %struct.netx_port** %5, align 8
  %12 = getelementptr inbounds %struct.netx_port, %struct.netx_port* %11, i32 0, i32 0
  %13 = call i32 @uart_suspend_port(i32* @netx_reg, i32* %12)
  br label %14

14:                                               ; preds = %10, %2
  ret i32 0
}

declare dso_local %struct.netx_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uart_suspend_port(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
