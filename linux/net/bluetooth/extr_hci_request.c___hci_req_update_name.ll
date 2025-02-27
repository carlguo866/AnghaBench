; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_req_update_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_write_local_name = type { i32 }

@HCI_OP_WRITE_LOCAL_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__hci_req_update_name(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_cp_write_local_name, align 4
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %5 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %6 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %5, i32 0, i32 0
  %7 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  store %struct.hci_dev* %7, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_cp_write_local_name, %struct.hci_cp_write_local_name* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i32 %9, i32 %12, i32 4)
  %14 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %15 = load i32, i32* @HCI_OP_WRITE_LOCAL_NAME, align 4
  %16 = call i32 @hci_req_add(%struct.hci_request* %14, i32 %15, i32 4, %struct.hci_cp_write_local_name* %4)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_write_local_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
