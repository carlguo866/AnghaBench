; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_null_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_null_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_protocol = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_null_xmit(%struct.sk_buff* %0, %struct.ip_vs_conn* %1, %struct.ip_vs_protocol* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca %struct.ip_vs_protocol*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %5, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %6, align 8
  %7 = load i32, i32* @NF_ACCEPT, align 4
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
