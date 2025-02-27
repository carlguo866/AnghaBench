; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_detatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_detatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @qp_detatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_detatch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_handle, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @vmci_handle_is_invalid(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @qp_detatch_guest_work(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @qp_detatch_host_work(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %16, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @vmci_handle_is_invalid(i32) #1

declare dso_local i32 @qp_detatch_guest_work(i32) #1

declare dso_local i32 @qp_detatch_host_work(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
