; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_handle_array.c_vmci_handle_arr_get_handles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_handle_array.c_vmci_handle_arr_get_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_handle_arr = type { %struct.vmci_handle*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmci_handle* @vmci_handle_arr_get_handles(%struct.vmci_handle_arr* %0) #0 {
  %2 = alloca %struct.vmci_handle*, align 8
  %3 = alloca %struct.vmci_handle_arr*, align 8
  store %struct.vmci_handle_arr* %0, %struct.vmci_handle_arr** %3, align 8
  %4 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %3, align 8
  %5 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %3, align 8
  %10 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %9, i32 0, i32 0
  %11 = load %struct.vmci_handle*, %struct.vmci_handle** %10, align 8
  store %struct.vmci_handle* %11, %struct.vmci_handle** %2, align 8
  br label %13

12:                                               ; preds = %1
  store %struct.vmci_handle* null, %struct.vmci_handle** %2, align 8
  br label %13

13:                                               ; preds = %12, %8
  %14 = load %struct.vmci_handle*, %struct.vmci_handle** %2, align 8
  ret %struct.vmci_handle* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
