; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_reparent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si5341_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si5341_output*, i32)* @si5341_output_reparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_output_reparent(%struct.clk_si5341_output* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_si5341_output*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_si5341_output* %0, %struct.clk_si5341_output** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %3, align 8
  %6 = getelementptr inbounds %struct.clk_si5341_output, %struct.clk_si5341_output* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %3, align 8
  %11 = call i32 @SI5341_OUT_MUX_SEL(%struct.clk_si5341_output* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @regmap_update_bits(i32 %9, i32 %11, i32 7, i32 %12)
  ret i32 %13
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SI5341_OUT_MUX_SEL(%struct.clk_si5341_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
