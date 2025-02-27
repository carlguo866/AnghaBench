; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_is_ofld_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_is_ofld_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.work_request_hdr = type { i32 }

@FW_CRYPTO_LOOKASIDE_WR = common dso_local global i64 0, align 8
@SGE_MAX_WR_LEN = common dso_local global i64 0, align 8
@MAX_IMM_TX_PKT_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @is_ofld_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ofld_imm(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.work_request_hdr*, align 8
  %5 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.work_request_hdr*
  store %struct.work_request_hdr* %9, %struct.work_request_hdr** %4, align 8
  %10 = load %struct.work_request_hdr*, %struct.work_request_hdr** %4, align 8
  %11 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ntohl(i32 %12)
  %14 = call i64 @FW_WR_OP_G(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @FW_CRYPTO_LOOKASIDE_WR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SGE_MAX_WR_LEN, align 8
  %23 = icmp sle i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MAX_IMM_TX_PKT_LEN, align 8
  %30 = icmp sle i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @FW_WR_OP_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
