; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_uart = type { %struct.qca_data* }
%struct.qca_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_uart*)* @qca_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @qca_dequeue(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.qca_data*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %4 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %5 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %4, i32 0, i32 0
  %6 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  store %struct.qca_data* %6, %struct.qca_data** %3, align 8
  %7 = load %struct.qca_data*, %struct.qca_data** %3, align 8
  %8 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %7, i32 0, i32 0
  %9 = call %struct.sk_buff* @skb_dequeue(i32* %8)
  ret %struct.sk_buff* %9
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
