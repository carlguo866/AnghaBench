; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_dmabuf_ops_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_dmabuf_ops_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.dma_buf_attachment = type { %struct.vb2_dc_attachment*, i32 }
%struct.vb2_dc_attachment = type { i64, %struct.sg_table }
%struct.sg_table = type { i32, i32 }

@DMA_NONE = common dso_local global i64 0, align 8
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*, %struct.dma_buf_attachment*)* @vb2_dc_dmabuf_ops_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vb2_dc_dmabuf_ops_detach(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca %struct.vb2_dc_attachment*, align 8
  %6 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %4, align 8
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %8 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 0
  %9 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %8, align 8
  store %struct.vb2_dc_attachment* %9, %struct.vb2_dc_attachment** %5, align 8
  %10 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %5, align 8
  %11 = icmp ne %struct.vb2_dc_attachment* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %5, align 8
  %15 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %14, i32 0, i32 1
  store %struct.sg_table* %15, %struct.sg_table** %6, align 8
  %16 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %5, align 8
  %17 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DMA_NONE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %13
  %22 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %23 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %26 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %29 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %5, align 8
  %32 = getelementptr inbounds %struct.vb2_dc_attachment, %struct.vb2_dc_attachment* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %35 = call i32 @dma_unmap_sg_attrs(i32 %24, i32 %27, i32 %30, i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %21, %13
  %37 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %38 = call i32 @sg_free_table(%struct.sg_table* %37)
  %39 = load %struct.vb2_dc_attachment*, %struct.vb2_dc_attachment** %5, align 8
  %40 = call i32 @kfree(%struct.vb2_dc_attachment* %39)
  %41 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %42 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %41, i32 0, i32 0
  store %struct.vb2_dc_attachment* null, %struct.vb2_dc_attachment** %42, align 8
  br label %43

43:                                               ; preds = %36, %12
  ret void
}

declare dso_local i32 @dma_unmap_sg_attrs(i32, i32, i32, i64, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.vb2_dc_attachment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
