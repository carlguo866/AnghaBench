; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_configure_pd_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_configure_pd_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pmu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pmu*, i64, i32)* @rockchip_configure_pd_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_configure_pd_cnt(%struct.rockchip_pmu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.rockchip_pmu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rockchip_pmu* %0, %struct.rockchip_pmu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %8 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @regmap_write(i32 %9, i64 %10, i32 %11)
  %13 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %14 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @regmap_write(i32 %15, i64 %17, i32 %18)
  ret void
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
