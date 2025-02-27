; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_thermal_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_thermal_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_thermctl_zone = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@THERMCTL_INTR_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_thermctl_zone*)* @thermal_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thermal_irq_disable(%struct.tegra_thermctl_zone* %0) #0 {
  %2 = alloca %struct.tegra_thermctl_zone*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_thermctl_zone* %0, %struct.tegra_thermctl_zone** %2, align 8
  %4 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @THERMCTL_INTR_DISABLE, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %2, align 8
  %19 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @REG_SET_MASK(i32 %17, i32 %22, i32 0)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @THERMCTL_INTR_DISABLE, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %24, i64 %31)
  %33 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %2, align 8
  %34 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @REG_SET_MASK(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
