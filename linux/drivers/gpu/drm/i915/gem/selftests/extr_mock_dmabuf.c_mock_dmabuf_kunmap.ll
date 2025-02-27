; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_mock_dmabuf.c_mock_dmabuf_kunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_mock_dmabuf.c_mock_dmabuf_kunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.mock_dmabuf = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*, i64, i8*)* @mock_dmabuf_kunmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mock_dmabuf_kunmap(%struct.dma_buf* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mock_dmabuf*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %9 = call %struct.mock_dmabuf* @to_mock(%struct.dma_buf* %8)
  store %struct.mock_dmabuf* %9, %struct.mock_dmabuf** %7, align 8
  %10 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %7, align 8
  %11 = getelementptr inbounds %struct.mock_dmabuf, %struct.mock_dmabuf* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  call void @kunmap(i32 %15)
  ret void
}

declare dso_local %struct.mock_dmabuf* @to_mock(%struct.dma_buf*) #1

declare dso_local void @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
