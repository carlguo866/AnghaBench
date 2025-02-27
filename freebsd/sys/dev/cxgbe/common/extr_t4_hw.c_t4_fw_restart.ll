; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_fw_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_CIM_BOOT_CFG = common dso_local global i32 0, align 4
@F_UPCRST = common dso_local global i32 0, align 4
@FW_CMD_MAX_TIMEOUT = common dso_local global i32 0, align 4
@A_PCIE_FW = common dso_local global i32 0, align 4
@F_PCIE_FW_HALT = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fw_restart(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = load i32, i32* @A_CIM_BOOT_CFG, align 4
  %9 = load i32, i32* @F_UPCRST, align 4
  %10 = call i32 @t4_set_reg_field(%struct.adapter* %7, i32 %8, i32 %9, i32 0)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @FW_CMD_MAX_TIMEOUT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = load i32, i32* @A_PCIE_FW, align 4
  %18 = call i32 @t4_read_reg(%struct.adapter* %16, i32 %17)
  %19 = load i32, i32* @F_PCIE_FW_HALT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @FW_SUCCESS, align 4
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %15
  %25 = call i32 @msleep(i32 100)
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 100
  store i32 %27, i32* %6, align 4
  br label %11

28:                                               ; preds = %11
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
