; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_reset.c_ccu_reset_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_reset.c_ccu_reset_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.ccu_reset = type { i32, i64, %struct.ccu_reset_map* }
%struct.ccu_reset_map = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @ccu_reset_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_reset_assert(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccu_reset*, align 8
  %6 = alloca %struct.ccu_reset_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %10 = call %struct.ccu_reset* @rcdev_to_ccu_reset(%struct.reset_controller_dev* %9)
  store %struct.ccu_reset* %10, %struct.ccu_reset** %5, align 8
  %11 = load %struct.ccu_reset*, %struct.ccu_reset** %5, align 8
  %12 = getelementptr inbounds %struct.ccu_reset, %struct.ccu_reset* %11, i32 0, i32 2
  %13 = load %struct.ccu_reset_map*, %struct.ccu_reset_map** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.ccu_reset_map, %struct.ccu_reset_map* %13, i64 %14
  store %struct.ccu_reset_map* %15, %struct.ccu_reset_map** %6, align 8
  %16 = load %struct.ccu_reset*, %struct.ccu_reset** %5, align 8
  %17 = getelementptr inbounds %struct.ccu_reset, %struct.ccu_reset* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.ccu_reset*, %struct.ccu_reset** %5, align 8
  %22 = getelementptr inbounds %struct.ccu_reset, %struct.ccu_reset* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ccu_reset_map*, %struct.ccu_reset_map** %6, align 8
  %25 = getelementptr inbounds %struct.ccu_reset_map, %struct.ccu_reset_map* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ccu_reset_map*, %struct.ccu_reset_map** %6, align 8
  %31 = getelementptr inbounds %struct.ccu_reset_map, %struct.ccu_reset_map* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = xor i32 %32, -1
  %34 = and i32 %29, %33
  %35 = load %struct.ccu_reset*, %struct.ccu_reset** %5, align 8
  %36 = getelementptr inbounds %struct.ccu_reset, %struct.ccu_reset* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ccu_reset_map*, %struct.ccu_reset_map** %6, align 8
  %39 = getelementptr inbounds %struct.ccu_reset_map, %struct.ccu_reset_map* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i32 @writel(i32 %34, i64 %41)
  %43 = load %struct.ccu_reset*, %struct.ccu_reset** %5, align 8
  %44 = getelementptr inbounds %struct.ccu_reset, %struct.ccu_reset* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32 %45, i64 %46)
  ret i32 0
}

declare dso_local %struct.ccu_reset* @rcdev_to_ccu_reset(%struct.reset_controller_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
