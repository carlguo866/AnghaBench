; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-core.c_stm32_dfsdm_clk_disable_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-core.c_stm32_dfsdm_clk_disable_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dfsdm = type { i32 }
%struct.dfsdm_priv = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dfsdm*)* @stm32_dfsdm_clk_disable_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dfsdm_clk_disable_unprepare(%struct.stm32_dfsdm* %0) #0 {
  %2 = alloca %struct.stm32_dfsdm*, align 8
  %3 = alloca %struct.dfsdm_priv*, align 8
  store %struct.stm32_dfsdm* %0, %struct.stm32_dfsdm** %2, align 8
  %4 = load %struct.stm32_dfsdm*, %struct.stm32_dfsdm** %2, align 8
  %5 = call %struct.dfsdm_priv* @to_stm32_dfsdm_priv(%struct.stm32_dfsdm* %4)
  store %struct.dfsdm_priv* %5, %struct.dfsdm_priv** %3, align 8
  %6 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %3, align 8
  %7 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %3, align 8
  %12 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @clk_disable_unprepare(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %3, align 8
  %17 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @clk_disable_unprepare(i64 %18)
  ret void
}

declare dso_local %struct.dfsdm_priv* @to_stm32_dfsdm_priv(%struct.stm32_dfsdm*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
