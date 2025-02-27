; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_update_s.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_update_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid3_hc_tx_sock = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccid3_hc_tx_sock*, i32)* @ccid3_hc_tx_update_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_tx_update_s(%struct.ccid3_hc_tx_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.ccid3_hc_tx_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ccid3_hc_tx_sock* %0, %struct.ccid3_hc_tx_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %7 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %10 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @tfrc_ewma(i64 %11, i32 %12, i32 9)
  %14 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %15 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %17 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %23 = call i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock* %22)
  br label %24

24:                                               ; preds = %21, %2
  ret void
}

declare dso_local i64 @tfrc_ewma(i64, i32, i32) #1

declare dso_local i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
