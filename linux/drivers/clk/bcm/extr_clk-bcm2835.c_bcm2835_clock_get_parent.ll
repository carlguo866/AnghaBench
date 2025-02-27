; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.bcm2835_clock = type { %struct.bcm2835_clock_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_clock_data = type { i32 }
%struct.bcm2835_cprman = type { i32 }

@CM_SRC_MASK = common dso_local global i32 0, align 4
@CM_SRC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @bcm2835_clock_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_clock_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.bcm2835_clock*, align 8
  %4 = alloca %struct.bcm2835_cprman*, align 8
  %5 = alloca %struct.bcm2835_clock_data*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw* %7)
  store %struct.bcm2835_clock* %8, %struct.bcm2835_clock** %3, align 8
  %9 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %3, align 8
  %10 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %9, i32 0, i32 1
  %11 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %10, align 8
  store %struct.bcm2835_cprman* %11, %struct.bcm2835_cprman** %4, align 8
  %12 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %3, align 8
  %13 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %12, i32 0, i32 0
  %14 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %13, align 8
  store %struct.bcm2835_clock_data* %14, %struct.bcm2835_clock_data** %5, align 8
  %15 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %16 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %17 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cprman_read(%struct.bcm2835_cprman* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CM_SRC_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @CM_SRC_SHIFT, align 4
  %24 = ashr i32 %22, %23
  ret i32 %24
}

declare dso_local %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw*) #1

declare dso_local i32 @cprman_read(%struct.bcm2835_cprman*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
