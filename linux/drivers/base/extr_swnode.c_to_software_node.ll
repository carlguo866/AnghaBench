; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_to_software_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_to_software_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.software_node = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.swnode = type { %struct.software_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.software_node* @to_software_node(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.fwnode_handle*, align 8
  %3 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %2, align 8
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  %5 = call %struct.swnode* @to_swnode(%struct.fwnode_handle* %4)
  store %struct.swnode* %5, %struct.swnode** %3, align 8
  %6 = load %struct.swnode*, %struct.swnode** %3, align 8
  %7 = icmp ne %struct.swnode* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.swnode*, %struct.swnode** %3, align 8
  %10 = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 0
  %11 = load %struct.software_node*, %struct.software_node** %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi %struct.software_node* [ %11, %8 ], [ null, %12 ]
  ret %struct.software_node* %14
}

declare dso_local %struct.swnode* @to_swnode(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
