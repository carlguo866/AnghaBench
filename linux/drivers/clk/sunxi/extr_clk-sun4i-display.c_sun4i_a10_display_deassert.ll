; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-display.c_sun4i_a10_display_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun4i-display.c_sun4i_a10_display_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.reset_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @sun4i_a10_display_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_a10_display_deassert(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.reset_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %9 = call %struct.reset_data* @rcdev_to_reset_data(%struct.reset_controller_dev* %8)
  store %struct.reset_data* %9, %struct.reset_data** %5, align 8
  %10 = load %struct.reset_data*, %struct.reset_data** %5, align 8
  %11 = getelementptr inbounds %struct.reset_data, %struct.reset_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.reset_data*, %struct.reset_data** %5, align 8
  %16 = getelementptr inbounds %struct.reset_data, %struct.reset_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @readl(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.reset_data*, %struct.reset_data** %5, align 8
  %21 = getelementptr inbounds %struct.reset_data, %struct.reset_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %22, %23
  %25 = call i32 @BIT(i64 %24)
  %26 = or i32 %19, %25
  %27 = load %struct.reset_data*, %struct.reset_data** %5, align 8
  %28 = getelementptr inbounds %struct.reset_data, %struct.reset_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @writel(i32 %26, i32 %29)
  %31 = load %struct.reset_data*, %struct.reset_data** %5, align 8
  %32 = getelementptr inbounds %struct.reset_data, %struct.reset_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32 %33, i64 %34)
  ret i32 0
}

declare dso_local %struct.reset_data* @rcdev_to_reset_data(%struct.reset_controller_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
