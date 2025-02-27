; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_nf_send_unreach6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_nf_send_unreach6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32* }
%struct.sk_buff = type { i32* }

@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_send_unreach6(%struct.net* %0, %struct.sk_buff* %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @reject6_csum_ok(%struct.sk_buff* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %34

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.net*, %struct.net** %5, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %23, %18, %14
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* @ICMPV6_DEST_UNREACH, align 4
  %32 = load i8, i8* %7, align 1
  %33 = call i32 @icmpv6_send(%struct.sk_buff* %30, i32 %31, i8 zeroext %32, i32 0)
  br label %34

34:                                               ; preds = %29, %13
  ret void
}

declare dso_local i32 @reject6_csum_ok(%struct.sk_buff*, i32) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
