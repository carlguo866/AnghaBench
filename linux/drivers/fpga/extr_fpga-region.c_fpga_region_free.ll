; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-region.c_fpga_region_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-region.c_fpga_region_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_region = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@fpga_region_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpga_region_free(%struct.fpga_region* %0) #0 {
  %2 = alloca %struct.fpga_region*, align 8
  store %struct.fpga_region* %0, %struct.fpga_region** %2, align 8
  %3 = load %struct.fpga_region*, %struct.fpga_region** %2, align 8
  %4 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ida_simple_remove(i32* @fpga_region_ida, i32 %6)
  %8 = load %struct.fpga_region*, %struct.fpga_region** %2, align 8
  %9 = call i32 @kfree(%struct.fpga_region* %8)
  ret void
}

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.fpga_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
