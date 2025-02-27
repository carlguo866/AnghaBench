; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_tx_copy_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_tx_copy_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.txentry_desc = type { i32, i64 }
%struct.skb_frame_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00crypto_tx_copy_iv(%struct.sk_buff* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff* %6)
  store %struct.skb_frame_desc* %7, %struct.skb_frame_desc** %5, align 8
  %8 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %9 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %19 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %25 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %29 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(i32 %20, i64 %27, i32 %30)
  br label %32

32:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
