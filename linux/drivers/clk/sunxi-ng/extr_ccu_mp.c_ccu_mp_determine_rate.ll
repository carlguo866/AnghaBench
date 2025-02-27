; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32 }
%struct.ccu_mp = type { i32, i32 }

@ccu_mp_round_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @ccu_mp_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_mp_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_rate_request*, align 8
  %5 = alloca %struct.ccu_mp*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %4, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.ccu_mp* @hw_to_ccu_mp(%struct.clk_hw* %6)
  store %struct.ccu_mp* %7, %struct.ccu_mp** %5, align 8
  %8 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %9 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %8, i32 0, i32 1
  %10 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %11 = getelementptr inbounds %struct.ccu_mp, %struct.ccu_mp* %10, i32 0, i32 0
  %12 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %13 = load i32, i32* @ccu_mp_round_rate, align 4
  %14 = load %struct.ccu_mp*, %struct.ccu_mp** %5, align 8
  %15 = call i32 @ccu_mux_helper_determine_rate(i32* %9, i32* %11, %struct.clk_rate_request* %12, i32 %13, %struct.ccu_mp* %14)
  ret i32 %15
}

declare dso_local %struct.ccu_mp* @hw_to_ccu_mp(%struct.clk_hw*) #1

declare dso_local i32 @ccu_mux_helper_determine_rate(i32*, i32*, %struct.clk_rate_request*, i32, %struct.ccu_mp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
