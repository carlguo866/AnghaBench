; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_kmap_udmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_kmap_udmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.udmabuf* }
%struct.udmabuf = type { %struct.page** }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_buf*, i64)* @kmap_udmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kmap_udmabuf(%struct.dma_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.udmabuf*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %8 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %7, i32 0, i32 0
  %9 = load %struct.udmabuf*, %struct.udmabuf** %8, align 8
  store %struct.udmabuf* %9, %struct.udmabuf** %5, align 8
  %10 = load %struct.udmabuf*, %struct.udmabuf** %5, align 8
  %11 = getelementptr inbounds %struct.udmabuf, %struct.udmabuf* %10, i32 0, i32 0
  %12 = load %struct.page**, %struct.page*** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.page*, %struct.page** %12, i64 %13
  %15 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %15, %struct.page** %6, align 8
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i8* @kmap(%struct.page* %16)
  ret i8* %17
}

declare dso_local i8* @kmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
