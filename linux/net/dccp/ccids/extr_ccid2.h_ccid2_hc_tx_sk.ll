; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.h_ccid2_hc_tx_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.h_ccid2_hc_tx_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid2_hc_tx_sock = type { i32 }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccid2_hc_tx_sock* (%struct.sock*)* @ccid2_hc_tx_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ccid2_hc_tx_sock* @ccid_priv(i32 %6)
  ret %struct.ccid2_hc_tx_sock* %7
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid_priv(i32) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
