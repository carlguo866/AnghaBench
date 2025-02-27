; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_unmap_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_unmap_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_fl = type { i64, i64, i32, %struct.rx_sw_desc* }
%struct.rx_sw_desc = type { i32* }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @unmap_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_rx_buf(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca %struct.rx_sw_desc*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %6 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %7 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %6, i32 0, i32 3
  %8 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %9 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %10 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %8, i64 %11
  store %struct.rx_sw_desc* %12, %struct.rx_sw_desc** %5, align 8
  %13 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %5, align 8
  %14 = call i64 @is_buf_mapped(%struct.rx_sw_desc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %5, align 8
  %21 = call i32 @get_buf_addr(%struct.rx_sw_desc* %20)
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %5, align 8
  %24 = call i32 @get_buf_size(%struct.adapter* %22, %struct.rx_sw_desc* %23)
  %25 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %26 = call i32 @dma_unmap_page(i32 %19, i32 %21, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %2
  %28 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %5, align 8
  %29 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %31 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %35 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %40 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %27
  %42 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %43 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  ret void
}

declare dso_local i64 @is_buf_mapped(%struct.rx_sw_desc*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @get_buf_addr(%struct.rx_sw_desc*) #1

declare dso_local i32 @get_buf_size(%struct.adapter*, %struct.rx_sw_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
