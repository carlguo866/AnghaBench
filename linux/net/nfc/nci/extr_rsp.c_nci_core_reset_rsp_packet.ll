; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_core_reset_rsp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_core_reset_rsp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nci_core_reset_rsp = type { i64, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"status 0x%x\0A\00", align 1
@NCI_STATUS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"nci_ver 0x%x, config_status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_core_reset_rsp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_core_reset_rsp_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nci_core_reset_rsp*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.nci_core_reset_rsp*
  store %struct.nci_core_reset_rsp* %10, %struct.nci_core_reset_rsp** %5, align 8
  %11 = load %struct.nci_core_reset_rsp*, %struct.nci_core_reset_rsp** %5, align 8
  %12 = getelementptr inbounds %struct.nci_core_reset_rsp, %struct.nci_core_reset_rsp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.nci_core_reset_rsp*, %struct.nci_core_reset_rsp** %5, align 8
  %16 = getelementptr inbounds %struct.nci_core_reset_rsp, %struct.nci_core_reset_rsp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NCI_STATUS_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.nci_core_reset_rsp*, %struct.nci_core_reset_rsp** %5, align 8
  %22 = getelementptr inbounds %struct.nci_core_reset_rsp, %struct.nci_core_reset_rsp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nci_core_reset_rsp*, %struct.nci_core_reset_rsp** %5, align 8
  %27 = getelementptr inbounds %struct.nci_core_reset_rsp, %struct.nci_core_reset_rsp* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.nci_core_reset_rsp*, %struct.nci_core_reset_rsp** %5, align 8
  %31 = getelementptr inbounds %struct.nci_core_reset_rsp, %struct.nci_core_reset_rsp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 %32)
  br label %34

34:                                               ; preds = %20, %2
  %35 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %36 = load %struct.nci_core_reset_rsp*, %struct.nci_core_reset_rsp** %5, align 8
  %37 = getelementptr inbounds %struct.nci_core_reset_rsp, %struct.nci_core_reset_rsp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @nci_req_complete(%struct.nci_dev* %35, i64 %38)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
