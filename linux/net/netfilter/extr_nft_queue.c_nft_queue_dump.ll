; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_queue = type { i32, i32, i32 }

@NFTA_QUEUE_NUM = common dso_local global i32 0, align 4
@NFTA_QUEUE_TOTAL = common dso_local global i32 0, align 4
@NFTA_QUEUE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_queue_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_queue_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_queue*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_queue* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_queue* %8, %struct.nft_queue** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_QUEUE_NUM, align 4
  %11 = load %struct.nft_queue*, %struct.nft_queue** %6, align 8
  %12 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @htons(i32 %13)
  %15 = call i64 @nla_put_be16(%struct.sk_buff* %9, i32 %10, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @NFTA_QUEUE_TOTAL, align 4
  %20 = load %struct.nft_queue*, %struct.nft_queue** %6, align 8
  %21 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = call i64 @nla_put_be16(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @NFTA_QUEUE_FLAGS, align 4
  %29 = load %struct.nft_queue*, %struct.nft_queue** %6, align 8
  %30 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @htons(i32 %31)
  %33 = call i64 @nla_put_be16(%struct.sk_buff* %27, i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26, %17, %2
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.nft_queue* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
