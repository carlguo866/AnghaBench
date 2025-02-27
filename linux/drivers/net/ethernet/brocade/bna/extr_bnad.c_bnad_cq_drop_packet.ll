; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cq_drop_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cq_drop_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_rcb = type { i32, %struct.bnad_rx_unmap_q* }
%struct.bnad_rx_unmap_q = type { i32, %struct.bnad_rx_unmap* }
%struct.bnad_rx_unmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_rcb*, i64, i64)* @bnad_cq_drop_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_cq_drop_packet(%struct.bnad* %0, %struct.bna_rcb* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.bna_rcb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bnad_rx_unmap_q*, align 8
  %10 = alloca %struct.bnad_rx_unmap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %5, align 8
  store %struct.bna_rcb* %1, %struct.bna_rcb** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.bna_rcb*, %struct.bna_rcb** %6, align 8
  %14 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %13, i32 0, i32 1
  %15 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %14, align 8
  store %struct.bnad_rx_unmap_q* %15, %struct.bnad_rx_unmap_q** %9, align 8
  store i64 0, i64* %12, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %46, %4
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %9, align 8
  %23 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %22, i32 0, i32 1
  %24 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %23, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %24, i64 %25
  store %struct.bnad_rx_unmap* %26, %struct.bnad_rx_unmap** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.bna_rcb*, %struct.bna_rcb** %6, align 8
  %29 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BNA_QE_INDX_INC(i64 %27, i32 %30)
  %32 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %9, align 8
  %33 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @BNAD_RXBUF_IS_SK_BUFF(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load %struct.bnad*, %struct.bnad** %5, align 8
  %39 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %10, align 8
  %40 = call i32 @bnad_rxq_cleanup_skb(%struct.bnad* %38, %struct.bnad_rx_unmap* %39)
  br label %45

41:                                               ; preds = %21
  %42 = load %struct.bnad*, %struct.bnad** %5, align 8
  %43 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %10, align 8
  %44 = call i32 @bnad_rxq_cleanup_page(%struct.bnad* %42, %struct.bnad_rx_unmap* %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %12, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %12, align 8
  br label %17

49:                                               ; preds = %17
  ret void
}

declare dso_local i32 @BNA_QE_INDX_INC(i64, i32) #1

declare dso_local i64 @BNAD_RXBUF_IS_SK_BUFF(i32) #1

declare dso_local i32 @bnad_rxq_cleanup_skb(%struct.bnad*, %struct.bnad_rx_unmap*) #1

declare dso_local i32 @bnad_rxq_cleanup_page(%struct.bnad*, %struct.bnad_rx_unmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
