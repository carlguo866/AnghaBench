; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_rf_deactivate_rsp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_rf_deactivate_rsp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i64* }

@.str = private unnamed_addr constant [13 x i8] c"status 0x%x\0A\00", align 1
@NCI_STATUS_OK = common dso_local global i64 0, align 8
@NCI_POLL_ACTIVE = common dso_local global i64 0, align 8
@NCI_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_rf_deactivate_rsp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_rf_deactivate_rsp_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NCI_STATUS_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %17, i32 0, i32 0
  %19 = call i64 @atomic_read(i32* %18)
  %20 = load i64, i64* @NCI_POLL_ACTIVE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16, %2
  %23 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %24 = call i32 @nci_clear_target_list(%struct.nci_dev* %23)
  %25 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* @NCI_IDLE, align 4
  %28 = call i32 @atomic_set(i32* %26, i32 %27)
  %29 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @nci_req_complete(%struct.nci_dev* %29, i64 %30)
  br label %32

32:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nci_clear_target_list(%struct.nci_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
