; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_flush_rx_FIFO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_flush_rx_FIFO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_channel*)* @flush_rx_FIFO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_rx_FIFO(%struct.scc_channel* %0) #0 {
  %2 = alloca %struct.scc_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.scc_channel* %0, %struct.scc_channel** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %9 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @Inb(i32 %10)
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %17 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %22 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %27 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dev_kfree_skb_irq(i32* %28)
  %30 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %31 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @Inb(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
