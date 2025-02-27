; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_eir.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_eir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_write_eir = type { i32 }

@HCI_SSP_ENABLED = common dso_local global i32 0, align 4
@HCI_SERVICE_CACHE = common dso_local global i32 0, align 4
@HCI_OP_WRITE_EIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__hci_req_update_eir(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_cp_write_eir, align 4
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %5 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %6 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %5, i32 0, i32 0
  %7 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  store %struct.hci_dev* %7, %struct.hci_dev** %3, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = call i32 @hdev_is_powered(%struct.hci_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = call i32 @lmp_ext_inq_capable(%struct.hci_dev* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %53

17:                                               ; preds = %12
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load i32, i32* @HCI_SSP_ENABLED, align 4
  %20 = call i64 @hci_dev_test_flag(%struct.hci_dev* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %53

23:                                               ; preds = %17
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load i32, i32* @HCI_SERVICE_CACHE, align 4
  %26 = call i64 @hci_dev_test_flag(%struct.hci_dev* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %53

29:                                               ; preds = %23
  %30 = call i32 @memset(%struct.hci_cp_write_eir* %4, i32 0, i32 4)
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hci_cp_write_eir, %struct.hci_cp_write_eir* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @create_eir(%struct.hci_dev* %31, i32 %33)
  %35 = getelementptr inbounds %struct.hci_cp_write_eir, %struct.hci_cp_write_eir* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @memcmp(i32 %36, i32 %39, i32 4)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %53

43:                                               ; preds = %29
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.hci_cp_write_eir, %struct.hci_cp_write_eir* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32 %46, i32 %48, i32 4)
  %50 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %51 = load i32, i32* @HCI_OP_WRITE_EIR, align 4
  %52 = call i32 @hci_req_add(%struct.hci_request* %50, i32 %51, i32 4, %struct.hci_cp_write_eir* %4)
  br label %53

53:                                               ; preds = %43, %42, %28, %22, %16, %11
  ret void
}

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @lmp_ext_inq_capable(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @memset(%struct.hci_cp_write_eir*, i32, i32) #1

declare dso_local i32 @create_eir(%struct.hci_dev*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_write_eir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
