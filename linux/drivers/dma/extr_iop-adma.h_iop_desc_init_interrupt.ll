; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_init_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_init_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { i32 }
%struct.iop_adma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.iop3xx_desc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*)* @iop_desc_init_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop_desc_init_interrupt(%struct.iop_adma_desc_slot* %0, %struct.iop_adma_chan* %1) #0 {
  %3 = alloca %struct.iop_adma_desc_slot*, align 8
  %4 = alloca %struct.iop_adma_chan*, align 8
  %5 = alloca %union.iop3xx_desc, align 8
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %3, align 8
  store %struct.iop_adma_chan* %1, %struct.iop_adma_chan** %4, align 8
  %6 = bitcast %union.iop3xx_desc* %5 to i32*
  %7 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %3, align 8
  %8 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 8
  %10 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %46 [
    i32 129, label %15
    i32 128, label %15
    i32 130, label %27
  ]

15:                                               ; preds = %2, %2
  %16 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %3, align 8
  %17 = call i32 @iop_desc_init_memcpy(%struct.iop_adma_desc_slot* %16, i32 1)
  %18 = bitcast %union.iop3xx_desc* %5 to %struct.TYPE_5__**
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = bitcast %union.iop3xx_desc* %5 to %struct.TYPE_5__**
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = bitcast %union.iop3xx_desc* %5 to %struct.TYPE_5__**
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %3, align 8
  %29 = call i32 @iop_desc_init_null_xor(%struct.iop_adma_desc_slot* %28, i32 2, i32 1)
  %30 = bitcast %union.iop3xx_desc* %5 to %struct.TYPE_6__**
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = bitcast %union.iop3xx_desc* %5 to %struct.TYPE_6__**
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = bitcast %union.iop3xx_desc* %5 to %struct.TYPE_6__**
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 0, i32* %40, align 4
  %41 = bitcast %union.iop3xx_desc* %5 to %struct.TYPE_6__**
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 0, i32* %45, align 4
  br label %48

46:                                               ; preds = %2
  %47 = call i32 (...) @BUG()
  br label %48

48:                                               ; preds = %46, %27, %15
  ret void
}

declare dso_local i32 @iop_desc_init_memcpy(%struct.iop_adma_desc_slot*, i32) #1

declare dso_local i32 @iop_desc_init_null_xor(%struct.iop_adma_desc_slot*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
