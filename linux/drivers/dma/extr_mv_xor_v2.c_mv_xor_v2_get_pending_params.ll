; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_get_pending_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_get_pending_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_v2_device = type { i64 }

@MV_XOR_V2_DMA_DESQ_DONE_OFF = common dso_local global i64 0, align 8
@MV_XOR_V2_DMA_DESQ_DONE_READ_PTR_SHIFT = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_DONE_READ_PTR_MASK = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_DONE_PENDING_SHIFT = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_DONE_PENDING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_xor_v2_device*, i32*)* @mv_xor_v2_get_pending_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_v2_get_pending_params(%struct.mv_xor_v2_device* %0, i32* %1) #0 {
  %3 = alloca %struct.mv_xor_v2_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.mv_xor_v2_device* %0, %struct.mv_xor_v2_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %3, align 8
  %7 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MV_XOR_V2_DMA_DESQ_DONE_OFF, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MV_XOR_V2_DMA_DESQ_DONE_READ_PTR_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* @MV_XOR_V2_DMA_DESQ_DONE_READ_PTR_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MV_XOR_V2_DMA_DESQ_DONE_PENDING_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @MV_XOR_V2_DMA_DESQ_DONE_PENDING_MASK, align 4
  %22 = and i32 %20, %21
  ret i32 %22
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
