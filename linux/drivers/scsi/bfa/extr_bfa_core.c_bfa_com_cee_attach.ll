; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_com_cee_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_com_cee_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bfa_cee_s }
%struct.bfa_cee_s = type { i32 }
%struct.bfa_mem_dma_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*)* @bfa_com_cee_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_com_cee_attach(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca %struct.bfa_cee_s*, align 8
  %4 = alloca %struct.bfa_mem_dma_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %5 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.bfa_cee_s* %7, %struct.bfa_cee_s** %3, align 8
  %8 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %9 = call %struct.bfa_mem_dma_s* @BFA_MEM_CEE_DMA(%struct.bfa_s* %8)
  store %struct.bfa_mem_dma_s* %9, %struct.bfa_mem_dma_s** %4, align 8
  %10 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %16 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %16, i32 0, i32 0
  %18 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %19 = call i32 @bfa_cee_attach(%struct.bfa_cee_s* %15, i32* %17, %struct.bfa_s* %18)
  %20 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %21 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfa_mem_dma_s, %struct.bfa_mem_dma_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfa_mem_dma_s, %struct.bfa_mem_dma_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_cee_mem_claim(%struct.bfa_cee_s* %20, i32 %23, i32 %26)
  ret void
}

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_CEE_DMA(%struct.bfa_s*) #1

declare dso_local i32 @bfa_cee_attach(%struct.bfa_cee_s*, i32*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_cee_mem_claim(%struct.bfa_cee_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
