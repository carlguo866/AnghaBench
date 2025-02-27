; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_tso_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_tso_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i64 }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, %struct.sk_buff*)* @tcp_tso_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcp_tso_acked(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @after(i32 %13, i64 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i64 @tcp_skb_pcount(%struct.sk_buff* %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  %34 = call i64 @tcp_trim_head(%struct.sock* %24, %struct.sk_buff* %25, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %65

37:                                               ; preds = %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @tcp_skb_pcount(%struct.sk_buff* %38)
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i64 @tcp_skb_pcount(%struct.sk_buff* %45)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @before(i64 %53, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  br label %63

63:                                               ; preds = %44, %37
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %63, %36
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @after(i32, i64) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i64 @tcp_trim_head(%struct.sock*, %struct.sk_buff*, i64) #1

declare dso_local i32 @before(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
