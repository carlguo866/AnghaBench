; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.h_mite_free_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.h_mite_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_dma_descriptor_ring = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mite_dma_descriptor_ring*)* @mite_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mite_free_ring(%struct.mite_dma_descriptor_ring* %0) #0 {
  %2 = alloca %struct.mite_dma_descriptor_ring*, align 8
  store %struct.mite_dma_descriptor_ring* %0, %struct.mite_dma_descriptor_ring** %2, align 8
  %3 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %2, align 8
  %4 = icmp ne %struct.mite_dma_descriptor_ring* %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %2, align 8
  %7 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %2, align 8
  %12 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %2, align 8
  %15 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %2, align 8
  %21 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %2, align 8
  %24 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_coherent(i32 %13, i32 %19, i64 %22, i32 %25)
  br label %27

27:                                               ; preds = %10, %5
  %28 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %2, align 8
  %29 = getelementptr inbounds %struct.mite_dma_descriptor_ring, %struct.mite_dma_descriptor_ring* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @put_device(i32 %30)
  %32 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %2, align 8
  %33 = call i32 @kfree(%struct.mite_dma_descriptor_ring* %32)
  br label %34

34:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @kfree(%struct.mite_dma_descriptor_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
