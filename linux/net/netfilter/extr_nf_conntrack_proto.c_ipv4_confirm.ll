; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_ipv4_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto.c_ipv4_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32 }
%struct.nf_conn = type { i32 }

@IP_CT_RELATED_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @ipv4_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_confirm(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %10, i32* %8)
  store %struct.nf_conn* %11, %struct.nf_conn** %9, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %13 = icmp ne %struct.nf_conn* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IP_CT_RELATED_REPLY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @nf_conntrack_confirm(%struct.sk_buff* %19)
  store i32 %20, i32* %4, align 4
  br label %31

21:                                               ; preds = %14
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i64 @skb_network_offset(%struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i64 @ip_hdrlen(%struct.sk_buff* %25)
  %27 = add nsw i64 %24, %26
  %28 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @nf_confirm(%struct.sk_buff* %22, i64 %27, %struct.nf_conn* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nf_conntrack_confirm(%struct.sk_buff*) #1

declare dso_local i32 @nf_confirm(%struct.sk_buff*, i64, %struct.nf_conn*, i32) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @ip_hdrlen(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
