; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_init_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_init_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dccp_v6_init_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_init_sequence(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %3 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %4 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %3)
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = call %struct.TYPE_8__* @dccp_hdr(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = call %struct.TYPE_8__* @dccp_hdr(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @secure_dccpv6_sequence_number(i32 %7, i32 %12, i32 %16, i32 %20)
  ret i32 %21
}

declare dso_local i32 @secure_dccpv6_sequence_number(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @dccp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
