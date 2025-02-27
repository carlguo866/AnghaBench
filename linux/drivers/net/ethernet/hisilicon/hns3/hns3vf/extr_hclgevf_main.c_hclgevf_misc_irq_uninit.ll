; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_misc_irq_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_misc_irq_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_dev*)* @hclgevf_misc_irq_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_misc_irq_uninit(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %3 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %3, i32 0, i32 0
  %5 = call i32 @hclgevf_enable_vector(%struct.TYPE_2__* %4, i32 0)
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @synchronize_irq(i32 %9)
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.hclgevf_dev* %15)
  %17 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %18 = call i32 @hclgevf_free_vector(%struct.hclgevf_dev* %17, i32 0)
  ret void
}

declare dso_local i32 @hclgevf_enable_vector(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @free_irq(i32, %struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_free_vector(%struct.hclgevf_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
