; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-mcp23s08.c_mcp23s08_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-mcp23s08.c_mcp23s08_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mcp23s08 = type { i32 }

@MCP_IODIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @mcp23s08_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp23s08_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcp23s08*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.mcp23s08* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.mcp23s08* %8, %struct.mcp23s08** %5, align 8
  %9 = load %struct.mcp23s08*, %struct.mcp23s08** %5, align 8
  %10 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.mcp23s08*, %struct.mcp23s08** %5, align 8
  %13 = load i32, i32* @MCP_IODIR, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @mcp_set_bit(%struct.mcp23s08* %12, i32 %13, i32 %14, i32 1)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mcp23s08*, %struct.mcp23s08** %5, align 8
  %17 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local %struct.mcp23s08* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mcp_set_bit(%struct.mcp23s08*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
