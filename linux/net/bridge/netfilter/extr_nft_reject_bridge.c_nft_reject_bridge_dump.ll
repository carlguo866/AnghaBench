; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_reject_bridge_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_reject_bridge_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_reject = type { i32, i32 }

@NFTA_REJECT_TYPE = common dso_local global i32 0, align 4
@NFTA_REJECT_ICMP_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_reject_bridge_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_reject_bridge_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_reject*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_reject* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_reject* %8, %struct.nft_reject** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_REJECT_TYPE, align 4
  %11 = load %struct.nft_reject*, %struct.nft_reject** %6, align 8
  %12 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @htonl(i32 %13)
  %15 = call i64 @nla_put_be32(%struct.sk_buff* %9, i32 %10, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.nft_reject*, %struct.nft_reject** %6, align 8
  %20 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %32 [
    i32 128, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %18, %18
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @NFTA_REJECT_ICMP_CODE, align 4
  %25 = load %struct.nft_reject*, %struct.nft_reject** %6, align 8
  %26 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nla_put_u8(%struct.sk_buff* %23, i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %34

31:                                               ; preds = %22
  br label %33

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %31
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; preds = %30, %17
  store i32 -1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.nft_reject* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
