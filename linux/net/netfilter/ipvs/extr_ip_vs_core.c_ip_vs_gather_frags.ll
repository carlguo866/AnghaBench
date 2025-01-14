; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_gather_frags.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_gather_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, %struct.sk_buff*, i32)* @ip_vs_gather_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_gather_frags(%struct.netns_ipvs* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @local_bh_disable()
  %9 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %10 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ip_defrag(i32 %11, %struct.sk_buff* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = call i32 (...) @local_bh_enable()
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @ip_hdr(%struct.sk_buff* %19)
  %21 = call i32 @ip_send_check(i32 %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ip_defrag(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @ip_send_check(i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
