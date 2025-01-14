; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-keystone.c_keystone_irq_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-keystone.c_keystone_irq_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keystone_irq_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"irq read failed ret(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keystone_irq_device*)* @keystone_irq_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_irq_readl(%struct.keystone_irq_device* %0) #0 {
  %2 = alloca %struct.keystone_irq_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.keystone_irq_device* %0, %struct.keystone_irq_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %2, align 8
  %6 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %2, align 8
  %9 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regmap_read(i32 %7, i32 %10, i32* %4)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %2, align 8
  %16 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
