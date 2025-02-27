; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_init_nondata_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_init_nondata_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i64 }

@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@TCPHDR_SYN = common dso_local global i32 0, align 4
@TCPHDR_FIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*, i32)* @tcp_init_nondata_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_init_nondata_skb(%struct.sk_buff* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @tcp_skb_pcount_set(%struct.sk_buff* %17, i32 1)
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TCPHDR_SYN, align 4
  %25 = load i32, i32* @TCPHDR_FIN, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_pcount_set(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
