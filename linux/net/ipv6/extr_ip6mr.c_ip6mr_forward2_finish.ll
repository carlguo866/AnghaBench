; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_forward2_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_forward2_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@IPSTATS_MIB_OUTFORWDATAGRAMS = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTOCTETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @ip6mr_forward2_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6mr_forward2_finish(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.net*, %struct.net** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = call i32 @skb_dst(%struct.sk_buff* %8)
  %10 = call i32 @ip6_dst_idev(i32 %9)
  %11 = load i32, i32* @IPSTATS_MIB_OUTFORWDATAGRAMS, align 4
  %12 = call i32 @IP6_INC_STATS(%struct.net* %7, i32 %10, i32 %11)
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @skb_dst(%struct.sk_buff* %14)
  %16 = call i32 @ip6_dst_idev(i32 %15)
  %17 = load i32, i32* @IPSTATS_MIB_OUTOCTETS, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IP6_ADD_STATS(%struct.net* %13, i32 %16, i32 %17, i32 %20)
  %22 = load %struct.net*, %struct.net** %4, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @dst_output(%struct.net* %22, %struct.sock* %23, %struct.sk_buff* %24)
  ret i32 %25
}

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @ip6_dst_idev(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @IP6_ADD_STATS(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @dst_output(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
