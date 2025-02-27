; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_uninit_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_uninit_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_hw = type { i32 }

@HCLGE_NIC_CSQ_BASEADDR_L_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CSQ_BASEADDR_H_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CSQ_DEPTH_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CSQ_HEAD_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CSQ_TAIL_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_BASEADDR_L_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_BASEADDR_H_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_DEPTH_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_HEAD_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_TAIL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_hw*)* @hclge_cmd_uninit_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_cmd_uninit_regs(%struct.hclge_hw* %0) #0 {
  %2 = alloca %struct.hclge_hw*, align 8
  store %struct.hclge_hw* %0, %struct.hclge_hw** %2, align 8
  %3 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %4 = load i32, i32* @HCLGE_NIC_CSQ_BASEADDR_L_REG, align 4
  %5 = call i32 @hclge_write_dev(%struct.hclge_hw* %3, i32 %4, i32 0)
  %6 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %7 = load i32, i32* @HCLGE_NIC_CSQ_BASEADDR_H_REG, align 4
  %8 = call i32 @hclge_write_dev(%struct.hclge_hw* %6, i32 %7, i32 0)
  %9 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %10 = load i32, i32* @HCLGE_NIC_CSQ_DEPTH_REG, align 4
  %11 = call i32 @hclge_write_dev(%struct.hclge_hw* %9, i32 %10, i32 0)
  %12 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %13 = load i32, i32* @HCLGE_NIC_CSQ_HEAD_REG, align 4
  %14 = call i32 @hclge_write_dev(%struct.hclge_hw* %12, i32 %13, i32 0)
  %15 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %16 = load i32, i32* @HCLGE_NIC_CSQ_TAIL_REG, align 4
  %17 = call i32 @hclge_write_dev(%struct.hclge_hw* %15, i32 %16, i32 0)
  %18 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %19 = load i32, i32* @HCLGE_NIC_CRQ_BASEADDR_L_REG, align 4
  %20 = call i32 @hclge_write_dev(%struct.hclge_hw* %18, i32 %19, i32 0)
  %21 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %22 = load i32, i32* @HCLGE_NIC_CRQ_BASEADDR_H_REG, align 4
  %23 = call i32 @hclge_write_dev(%struct.hclge_hw* %21, i32 %22, i32 0)
  %24 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %25 = load i32, i32* @HCLGE_NIC_CRQ_DEPTH_REG, align 4
  %26 = call i32 @hclge_write_dev(%struct.hclge_hw* %24, i32 %25, i32 0)
  %27 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %28 = load i32, i32* @HCLGE_NIC_CRQ_HEAD_REG, align 4
  %29 = call i32 @hclge_write_dev(%struct.hclge_hw* %27, i32 %28, i32 0)
  %30 = load %struct.hclge_hw*, %struct.hclge_hw** %2, align 8
  %31 = load i32, i32* @HCLGE_NIC_CRQ_TAIL_REG, align 4
  %32 = call i32 @hclge_write_dev(%struct.hclge_hw* %30, i32 %31, i32 0)
  ret void
}

declare dso_local i32 @hclge_write_dev(%struct.hclge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
