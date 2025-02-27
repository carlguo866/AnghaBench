; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c_of_attach_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c_of_attach_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_reconfig_data = type { %struct.device_node* }

@of_mutex = common dso_local global i32 0, align 4
@devtree_lock = common dso_local global i32 0, align 4
@OF_RECONFIG_ATTACH_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_attach_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.of_reconfig_data, align 8
  %4 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = call i32 @memset(%struct.of_reconfig_data* %3, i32 0, i32 8)
  %6 = load %struct.device_node*, %struct.device_node** %2, align 8
  %7 = getelementptr inbounds %struct.of_reconfig_data, %struct.of_reconfig_data* %3, i32 0, i32 0
  store %struct.device_node* %6, %struct.device_node** %7, align 8
  %8 = call i32 @mutex_lock(i32* @of_mutex)
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* @devtree_lock, i64 %9)
  %11 = load %struct.device_node*, %struct.device_node** %2, align 8
  %12 = call i32 @__of_attach_node(%struct.device_node* %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @raw_spin_unlock_irqrestore(i32* @devtree_lock, i64 %13)
  %15 = load %struct.device_node*, %struct.device_node** %2, align 8
  %16 = call i32 @__of_attach_node_sysfs(%struct.device_node* %15)
  %17 = call i32 @mutex_unlock(i32* @of_mutex)
  %18 = load i32, i32* @OF_RECONFIG_ATTACH_NODE, align 4
  %19 = call i32 @of_reconfig_notify(i32 %18, %struct.of_reconfig_data* %3)
  ret i32 0
}

declare dso_local i32 @memset(%struct.of_reconfig_data*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__of_attach_node(%struct.device_node*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__of_attach_node_sysfs(%struct.device_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @of_reconfig_notify(i32, %struct.of_reconfig_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
