; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_altera_ps_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_altera_ps_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.altera_ps_conf* }
%struct.altera_ps_conf = type { i32 }

@FPGA_MGR_STATE_RESET = common dso_local global i32 0, align 4
@FPGA_MGR_STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*)* @altera_ps_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_ps_state(%struct.fpga_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpga_manager*, align 8
  %4 = alloca %struct.altera_ps_conf*, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %3, align 8
  %5 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %6 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %5, i32 0, i32 0
  %7 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %6, align 8
  store %struct.altera_ps_conf* %7, %struct.altera_ps_conf** %4, align 8
  %8 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %9 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @gpiod_get_value_cansleep(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FPGA_MGR_STATE_RESET, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @FPGA_MGR_STATE_UNKNOWN, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @gpiod_get_value_cansleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
