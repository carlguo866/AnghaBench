; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip4ip6_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip4ip6_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@ip4ip6_dscp_ecn_decapsulate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip4ip6_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip4ip6_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = load i32, i32* @ETH_P_IP, align 4
  %5 = load i32, i32* @IPPROTO_IPIP, align 4
  %6 = load i32, i32* @ip4ip6_dscp_ecn_decapsulate, align 4
  %7 = call i32 @ip6_tnl_rcv(%struct.sk_buff* %3, i32 %4, i32 %5, i32 %6)
  ret i32 %7
}

declare dso_local i32 @ip6_tnl_rcv(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
