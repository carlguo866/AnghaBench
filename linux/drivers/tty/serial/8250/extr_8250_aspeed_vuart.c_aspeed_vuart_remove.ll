; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.aspeed_vuart = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@aspeed_vuart_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_vuart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_vuart_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.aspeed_vuart*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.aspeed_vuart* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.aspeed_vuart* %5, %struct.aspeed_vuart** %3, align 8
  %6 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %3, align 8
  %7 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %6, i32 0, i32 3
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %3, align 8
  %10 = call i32 @aspeed_vuart_set_enabled(%struct.aspeed_vuart* %9, i32 0)
  %11 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %3, align 8
  %12 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @serial8250_unregister_port(i32 %13)
  %15 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %3, align 8
  %16 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @sysfs_remove_group(i32* %18, i32* @aspeed_vuart_attr_group)
  %20 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %3, align 8
  %21 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  ret i32 0
}

declare dso_local %struct.aspeed_vuart* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @aspeed_vuart_set_enabled(%struct.aspeed_vuart*, i32) #1

declare dso_local i32 @serial8250_unregister_port(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
