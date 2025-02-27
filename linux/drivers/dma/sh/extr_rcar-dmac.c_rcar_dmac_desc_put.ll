; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_desc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_desc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac_chan = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rcar_dmac_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_dmac_chan*, %struct.rcar_dmac_desc*)* @rcar_dmac_desc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_dmac_desc_put(%struct.rcar_dmac_chan* %0, %struct.rcar_dmac_desc* %1) #0 {
  %3 = alloca %struct.rcar_dmac_chan*, align 8
  %4 = alloca %struct.rcar_dmac_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.rcar_dmac_chan* %0, %struct.rcar_dmac_chan** %3, align 8
  store %struct.rcar_dmac_desc* %1, %struct.rcar_dmac_desc** %4, align 8
  %6 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %4, align 8
  %11 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %10, i32 0, i32 1
  %12 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %3, align 8
  %13 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @list_splice_tail_init(i32* %11, i32* %14)
  %16 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %4, align 8
  %17 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %16, i32 0, i32 0
  %18 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %3, align 8
  %19 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @list_add(i32* %17, i32* %20)
  %22 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %3, align 8
  %23 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
