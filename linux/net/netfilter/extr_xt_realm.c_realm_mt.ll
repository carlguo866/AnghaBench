; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_realm.c_realm_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_realm.c_realm_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_realm_info* }
%struct.xt_realm_info = type { i32, i32, i32 }
%struct.dst_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @realm_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realm_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_realm_info*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_realm_info*, %struct.xt_realm_info** %8, align 8
  store %struct.xt_realm_info* %9, %struct.xt_realm_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %10)
  store %struct.dst_entry* %11, %struct.dst_entry** %6, align 8
  %12 = load %struct.xt_realm_info*, %struct.xt_realm_info** %5, align 8
  %13 = getelementptr inbounds %struct.xt_realm_info, %struct.xt_realm_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %16 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xt_realm_info*, %struct.xt_realm_info** %5, align 8
  %19 = getelementptr inbounds %struct.xt_realm_info, %struct.xt_realm_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %14, %21
  %23 = zext i1 %22 to i32
  %24 = load %struct.xt_realm_info*, %struct.xt_realm_info** %5, align 8
  %25 = getelementptr inbounds %struct.xt_realm_info, %struct.xt_realm_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %23, %26
  ret i32 %27
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
