; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_delete_chan_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_delete_chan_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_chan = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_chan*)* @xgene_dma_delete_chan_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_delete_chan_rings(%struct.xgene_dma_chan* %0) #0 {
  %2 = alloca %struct.xgene_dma_chan*, align 8
  store %struct.xgene_dma_chan* %0, %struct.xgene_dma_chan** %2, align 8
  %3 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %3, i32 0, i32 1
  %5 = call i32 @xgene_dma_delete_ring_one(i32* %4)
  %6 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %6, i32 0, i32 0
  %8 = call i32 @xgene_dma_delete_ring_one(i32* %7)
  ret void
}

declare dso_local i32 @xgene_dma_delete_ring_one(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
