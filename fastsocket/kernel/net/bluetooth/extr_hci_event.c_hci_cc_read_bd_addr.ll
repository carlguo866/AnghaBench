; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_read_bd_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_read_bd_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_bd_addr = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s status 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_bd_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_bd_addr(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_bd_addr*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.hci_rp_read_bd_addr*
  store %struct.hci_rp_read_bd_addr* %10, %struct.hci_rp_read_bd_addr** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %5, align 8
  %15 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %5, align 8
  %19 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 0
  %25 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %5, align 8
  %26 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %25, i32 0, i32 1
  %27 = call i32 @bacpy(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %5, align 8
  %31 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hci_req_complete(%struct.hci_dev* %29, i32 %32)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_req_complete(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
