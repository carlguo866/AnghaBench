; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_get_free_txdesc_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_get_free_txdesc_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fec_enet_priv_tx_q = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fec_enet_priv_tx_q*)* @fec_enet_get_free_txdesc_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_get_free_txdesc_num(%struct.fec_enet_priv_tx_q* %0) #0 {
  %2 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %3 = alloca i32, align 4
  store %struct.fec_enet_priv_tx_q* %0, %struct.fec_enet_priv_tx_q** %2, align 8
  %4 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %2, align 8
  %5 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %2, align 8
  %9 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = ptrtoint i8* %7 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  %16 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %2, align 8
  %17 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = ashr i64 %15, %20
  %22 = sub nsw i64 %21, 1
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %2, align 8
  %31 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %29, %33
  br label %35

35:                                               ; preds = %28, %26
  %36 = phi i32 [ %27, %26 ], [ %34, %28 ]
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
