; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_mem_txq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_mem_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ecore_dev }
%struct.ecore_dev = type { i32 }
%struct.qlnx_fastpath = type { i32 }
%struct.qlnx_tx_queue = type { i32, i32, i32* }
%union.eth_tx_bd_types = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@ECORE_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@ECORE_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@ECORE_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.qlnx_fastpath*, %struct.qlnx_tx_queue*)* @qlnx_alloc_mem_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_alloc_mem_txq(%struct.TYPE_4__* %0, %struct.qlnx_fastpath* %1, %struct.qlnx_tx_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.qlnx_fastpath*, align 8
  %7 = alloca %struct.qlnx_tx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.eth_tx_bd_types*, align 8
  %10 = alloca %struct.ecore_dev*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.qlnx_fastpath* %1, %struct.qlnx_fastpath** %6, align 8
  store %struct.qlnx_tx_queue* %2, %struct.qlnx_tx_queue** %7, align 8
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.ecore_dev* %13, %struct.ecore_dev** %10, align 8
  %14 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %7, align 8
  %15 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* @TX_RING_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @bzero(i8* %18, i32 %22)
  %24 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %25 = load i32, i32* @ECORE_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %26 = load i32, i32* @ECORE_CHAIN_MODE_PBL, align 4
  %27 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U16, align 4
  %28 = load i32, i32* @TX_RING_SIZE, align 4
  %29 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %7, align 8
  %30 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %29, i32 0, i32 1
  %31 = call i32 @ecore_chain_alloc(%struct.ecore_dev* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 4, i32* %30, i32* null)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ECORE_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %40

36:                                               ; preds = %3
  %37 = load i32, i32* @TX_RING_SIZE, align 4
  %38 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %7, align 8
  %39 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %4, align 4
  br label %47

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %43 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %7, align 8
  %44 = call i32 @qlnx_free_mem_txq(%struct.TYPE_4__* %41, %struct.qlnx_fastpath* %42, %struct.qlnx_tx_queue* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %40, %36
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @ecore_chain_alloc(%struct.ecore_dev*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @qlnx_free_mem_txq(%struct.TYPE_4__*, %struct.qlnx_fastpath*, %struct.qlnx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
