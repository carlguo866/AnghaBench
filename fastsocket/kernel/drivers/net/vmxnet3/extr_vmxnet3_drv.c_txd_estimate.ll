; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_txd_estimate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_txd_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.skb_frag_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @txd_estimate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txd_estimate(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.skb_frag_struct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call i32 @skb_headlen(%struct.sk_buff* %6)
  %8 = call i32 @VMXNET3_TXD_NEEDED(i32 %7)
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %21, i64 %23
  store %struct.skb_frag_struct* %24, %struct.skb_frag_struct** %5, align 8
  %25 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %5, align 8
  %26 = call i32 @skb_frag_size(%struct.skb_frag_struct* %25)
  %27 = call i32 @VMXNET3_TXD_NEEDED(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @VMXNET3_TXD_NEEDED(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(%struct.skb_frag_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
