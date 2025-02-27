; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_enqueue_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_enqueue_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32 }
%struct.sk_buff = type { i32 }

@PH_DATA_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.layer2*, %struct.sk_buff*)* @enqueue_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_super(%struct.layer2* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.layer2*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.layer2* %0, %struct.layer2** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.layer2*, %struct.layer2** %3, align 8
  %6 = load i32, i32* @PH_DATA_REQ, align 4
  %7 = load %struct.layer2*, %struct.layer2** %3, align 8
  %8 = call i32 @l2_newid(%struct.layer2* %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @l2down(%struct.layer2* %5, i32 %6, i32 %8, %struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @dev_kfree_skb(%struct.sk_buff* %13)
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

declare dso_local i64 @l2down(%struct.layer2*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @l2_newid(%struct.layer2*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
