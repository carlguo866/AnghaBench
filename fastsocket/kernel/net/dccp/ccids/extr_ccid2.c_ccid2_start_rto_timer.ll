; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_start_rto_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_start_rto_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid2_hc_tx_sock = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"setting RTO timeout=%ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @ccid2_start_rto_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_start_rto_timer(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.ccid2_hc_tx_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %4)
  store %struct.ccid2_hc_tx_sock* %5, %struct.ccid2_hc_tx_sock** %3, align 8
  %6 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %7 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @ccid2_pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %11 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %10, i32 0, i32 1
  %12 = call i32 @timer_pending(i32* %11)
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %16 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %15, i32 0, i32 1
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %19 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i32 @sk_reset_timer(%struct.sock* %14, i32* %16, i64 %21)
  ret void
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @ccid2_pr_debug(i8*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
