; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_dmabuf_ops_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_dmabuf_ops_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.vb2_dma_sg_buf* }
%struct.vb2_dma_sg_buf = type { i8* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_buf*, i64)* @vb2_dma_sg_dmabuf_ops_kmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vb2_dma_sg_dmabuf_ops_kmap(%struct.dma_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vb2_dma_sg_buf*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %7 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %6, i32 0, i32 0
  %8 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %7, align 8
  store %struct.vb2_dma_sg_buf* %8, %struct.vb2_dma_sg_buf** %5, align 8
  %9 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %5, align 8
  %10 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %5, align 8
  %15 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = mul i64 %17, %18
  %20 = getelementptr i8, i8* %16, i64 %19
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i8* [ %20, %13 ], [ null, %21 ]
  ret i8* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
