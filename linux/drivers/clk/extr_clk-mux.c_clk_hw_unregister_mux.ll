; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-mux.c_clk_hw_unregister_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-mux.c_clk_hw_unregister_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_mux = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_hw_unregister_mux(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_mux*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.clk_mux* @to_clk_mux(%struct.clk_hw* %4)
  store %struct.clk_mux* %5, %struct.clk_mux** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call i32 @clk_hw_unregister(%struct.clk_hw* %6)
  %8 = load %struct.clk_mux*, %struct.clk_mux** %3, align 8
  %9 = call i32 @kfree(%struct.clk_mux* %8)
  ret void
}

declare dso_local %struct.clk_mux* @to_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_unregister(%struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.clk_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
