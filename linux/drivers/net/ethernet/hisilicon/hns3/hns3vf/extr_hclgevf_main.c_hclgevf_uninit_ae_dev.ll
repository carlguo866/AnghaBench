; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_uninit_ae_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_uninit_ae_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.hclgevf_dev* }
%struct.hclgevf_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_ae_dev*)* @hclgevf_uninit_ae_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_uninit_ae_dev(%struct.hnae3_ae_dev* %0) #0 {
  %2 = alloca %struct.hnae3_ae_dev*, align 8
  %3 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %2, align 8
  %4 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %4, i32 0, i32 0
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  store %struct.hclgevf_dev* %6, %struct.hclgevf_dev** %3, align 8
  %7 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %8 = call i32 @hclgevf_uninit_hdev(%struct.hclgevf_dev* %7)
  %9 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %9, i32 0, i32 0
  store %struct.hclgevf_dev* null, %struct.hclgevf_dev** %10, align 8
  ret void
}

declare dso_local i32 @hclgevf_uninit_hdev(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
