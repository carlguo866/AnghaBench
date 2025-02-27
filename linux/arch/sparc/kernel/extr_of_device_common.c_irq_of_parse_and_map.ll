; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_of_device_common.c_irq_of_parse_and_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_of_device_common.c_irq_of_parse_and_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_of_parse_and_map(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %7)
  store %struct.platform_device* %8, %struct.platform_device** %6, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %28

19:                                               ; preds = %11
  %20 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
