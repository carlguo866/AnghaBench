; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_helper_apply_prediv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_helper_apply_prediv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32 }
%struct.ccu_mux_internal = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ccu_mux_helper_apply_prediv(%struct.ccu_common* %0, %struct.ccu_mux_internal* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ccu_common*, align 8
  %6 = alloca %struct.ccu_mux_internal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ccu_common* %0, %struct.ccu_common** %5, align 8
  store %struct.ccu_mux_internal* %1, %struct.ccu_mux_internal** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ccu_common*, %struct.ccu_common** %5, align 8
  %11 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @ccu_mux_get_prediv(%struct.ccu_common* %10, %struct.ccu_mux_internal* %11, i32 %12)
  %14 = udiv i64 %9, %13
  ret i64 %14
}

declare dso_local i64 @ccu_mux_get_prediv(%struct.ccu_common*, %struct.ccu_mux_internal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
