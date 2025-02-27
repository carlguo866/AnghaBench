; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_get_next_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_get_next_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@devtree_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_get_next_parent(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %18

8:                                                ; preds = %1
  %9 = call i32 @read_lock(i32* @devtree_lock)
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device_node* @of_node_get(i32 %12)
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = call i32 @of_node_put(%struct.device_node* %14)
  %16 = call i32 @read_unlock(i32* @devtree_lock)
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %17, %struct.device_node** %2, align 8
  br label %18

18:                                               ; preds = %8, %7
  %19 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %19
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
