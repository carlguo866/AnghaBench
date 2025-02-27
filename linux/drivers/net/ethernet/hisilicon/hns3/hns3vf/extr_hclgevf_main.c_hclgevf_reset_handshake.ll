; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32 }

@HCLGEVF_NIC_CSQ_DEPTH_REG = common dso_local global i32 0, align 4
@HCLGEVF_NIC_SW_RST_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_dev*, i32)* @hclgevf_reset_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_reset_handshake(%struct.hclgevf_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 0
  %8 = load i32, i32* @HCLGEVF_NIC_CSQ_DEPTH_REG, align 4
  %9 = call i32 @hclgevf_read_dev(i32* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @HCLGEVF_NIC_SW_RST_RDY, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @HCLGEVF_NIC_SW_RST_RDY, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %22, i32 0, i32 0
  %24 = load i32, i32* @HCLGEVF_NIC_CSQ_DEPTH_REG, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @hclgevf_write_dev(i32* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @hclgevf_read_dev(i32*, i32) #1

declare dso_local i32 @hclgevf_write_dev(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
