; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_xfrm_state2msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_xfrm_state2msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.xfrm_state*)* @pfkey_xfrm_state2msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @pfkey_xfrm_state2msg(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %4 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %5 = call %struct.sk_buff* @__pfkey_xfrm_state2msg(%struct.xfrm_state* %4, i32 1, i32 3)
  store %struct.sk_buff* %5, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %6
}

declare dso_local %struct.sk_buff* @__pfkey_xfrm_state2msg(%struct.xfrm_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
