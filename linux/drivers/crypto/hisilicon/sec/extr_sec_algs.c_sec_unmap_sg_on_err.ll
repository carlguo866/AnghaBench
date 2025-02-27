; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_unmap_sg_on_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_algs.c_sec_unmap_sg_on_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type opaque
%struct.device = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*, i32, %struct.scatterlist**, i32*, i32, %struct.device*)* @sec_unmap_sg_on_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_unmap_sg_on_err(%struct.scatterlist* %0, i32 %1, %struct.scatterlist** %2, i32* %3, i32 %4, %struct.device* %5) #0 {
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.scatterlist** %2, %struct.scatterlist*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.device* %5, %struct.device** %12, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %26, %6
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %19, i64 %21
  %23 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %24 = bitcast %struct.scatterlist* %23 to i32*
  %25 = call i32 @kfree(i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %33 = bitcast %struct.scatterlist** %32 to i32*
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.device*, %struct.device** %12, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %37 = bitcast %struct.scatterlist* %36 to i32*****
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %40 = call i32 @dma_unmap_sg(%struct.device* %35, i32***** %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32*****, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
