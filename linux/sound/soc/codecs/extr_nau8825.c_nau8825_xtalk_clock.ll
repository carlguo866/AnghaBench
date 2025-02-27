; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32 }

@NAU8825_REG_FLL1 = common dso_local global i32 0, align 4
@NAU8825_REG_FLL2 = common dso_local global i32 0, align 4
@NAU8825_REG_FLL3 = common dso_local global i32 0, align 4
@NAU8825_REG_FLL4 = common dso_local global i32 0, align 4
@NAU8825_REG_FLL5 = common dso_local global i32 0, align 4
@NAU8825_REG_FLL6 = common dso_local global i32 0, align 4
@NAU8825_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8825_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8825_CLK_SRC_VCO = common dso_local global i32 0, align 4
@NAU8825_DCO_EN = common dso_local global i32 0, align 4
@NAU8825_CLK_MCLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8825_FLL_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_xtalk_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_xtalk_clock(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %3 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %4 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NAU8825_REG_FLL1, align 4
  %7 = call i32 @regmap_write(i32 %5, i32 %6, i32 0)
  %8 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %9 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NAU8825_REG_FLL2, align 4
  %12 = call i32 @regmap_write(i32 %10, i32 %11, i32 12582)
  %13 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %14 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NAU8825_REG_FLL3, align 4
  %17 = call i32 @regmap_write(i32 %15, i32 %16, i32 8)
  %18 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %19 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NAU8825_REG_FLL4, align 4
  %22 = call i32 @regmap_write(i32 %20, i32 %21, i32 16)
  %23 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %24 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NAU8825_REG_FLL5, align 4
  %27 = call i32 @regmap_write(i32 %25, i32 %26, i32 0)
  %28 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %29 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NAU8825_REG_FLL6, align 4
  %32 = call i32 @regmap_write(i32 %30, i32 %31, i32 24576)
  %33 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %34 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NAU8825_REG_CLK_DIVIDER, align 4
  %37 = load i32, i32* @NAU8825_CLK_SRC_MASK, align 4
  %38 = load i32, i32* @NAU8825_CLK_SRC_VCO, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %41 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NAU8825_REG_FLL6, align 4
  %44 = load i32, i32* @NAU8825_DCO_EN, align 4
  %45 = load i32, i32* @NAU8825_DCO_EN, align 4
  %46 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %48 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NAU8825_REG_CLK_DIVIDER, align 4
  %51 = load i32, i32* @NAU8825_CLK_MCLK_SRC_MASK, align 4
  %52 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 15)
  %53 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %54 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NAU8825_REG_FLL1, align 4
  %57 = load i32, i32* @NAU8825_FLL_RATIO_MASK, align 4
  %58 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 16)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
