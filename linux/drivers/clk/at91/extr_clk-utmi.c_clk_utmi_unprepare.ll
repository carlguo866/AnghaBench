; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-utmi.c_clk_utmi_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-utmi.c_clk_utmi_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_utmi = type { i32 }

@AT91_CKGR_UCKR = common dso_local global i32 0, align 4
@AT91_PMC_UPLLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_utmi_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_utmi_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_utmi*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.clk_utmi* @to_clk_utmi(%struct.clk_hw* %4)
  store %struct.clk_utmi* %5, %struct.clk_utmi** %3, align 8
  %6 = load %struct.clk_utmi*, %struct.clk_utmi** %3, align 8
  %7 = getelementptr inbounds %struct.clk_utmi, %struct.clk_utmi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AT91_CKGR_UCKR, align 4
  %10 = load i32, i32* @AT91_PMC_UPLLEN, align 4
  %11 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 0)
  ret void
}

declare dso_local %struct.clk_utmi* @to_clk_utmi(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
