; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c___of_remove_property_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c___of_remove_property_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }

@of_kset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__of_remove_property_sysfs(%struct.device_node* %0, %struct.property* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.property* %1, %struct.property** %4, align 8
  %5 = load i64, i64* @of_kset, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = call i64 @of_node_is_attached(%struct.device_node* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = load %struct.property*, %struct.property** %4, align 8
  %14 = call i32 @__of_sysfs_remove_bin_file(%struct.device_node* %12, %struct.property* %13)
  br label %15

15:                                               ; preds = %11, %7, %2
  ret void
}

declare dso_local i64 @of_node_is_attached(%struct.device_node*) #1

declare dso_local i32 @__of_sysfs_remove_bin_file(%struct.device_node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
