; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_uart = type { %struct.mrvl_data* }
%struct.mrvl_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_uart*)* @mrvl_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mrvl_dequeue(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.mrvl_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %6 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %5, i32 0, i32 0
  %7 = load %struct.mrvl_data*, %struct.mrvl_data** %6, align 8
  store %struct.mrvl_data* %7, %struct.mrvl_data** %3, align 8
  %8 = load %struct.mrvl_data*, %struct.mrvl_data** %3, align 8
  %9 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %8, i32 0, i32 1
  %10 = call %struct.sk_buff* @skb_dequeue(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.mrvl_data*, %struct.mrvl_data** %3, align 8
  %15 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %14, i32 0, i32 0
  %16 = call %struct.sk_buff* @skb_dequeue(i32* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_push(%struct.sk_buff* %18, i32 1)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @memcpy(i32 %19, i32* %22, i32 1)
  br label %24

24:                                               ; preds = %17, %13
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %25
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
