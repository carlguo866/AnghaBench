; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_rxe_comp_queue_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_rxe_comp_queue_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RXE_CNT_COMPLETER_SCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_comp_queue_pkt(%struct.rxe_qp* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %7 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %6, i32 0, i32 1
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_queue_tail(i32* %7, %struct.sk_buff* %8)
  %10 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %11 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %10, i32 0, i32 1
  %12 = call i32 @skb_queue_len(i32* %11)
  %13 = icmp sgt i32 %12, 1
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.TYPE_4__* @SKB_TO_PKT(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RXE_CNT_COMPLETER_SCHED, align 4
  %23 = call i32 @rxe_counter_inc(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %26 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @rxe_run_task(i32* %27, i32 %28)
  ret void
}

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @rxe_counter_inc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @SKB_TO_PKT(%struct.sk_buff*) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
