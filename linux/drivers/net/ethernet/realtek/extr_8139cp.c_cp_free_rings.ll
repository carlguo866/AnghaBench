; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_free_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CP_RING_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*)* @cp_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_free_rings(%struct.cp_private* %0) #0 {
  %2 = alloca %struct.cp_private*, align 8
  store %struct.cp_private* %0, %struct.cp_private** %2, align 8
  %3 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %4 = call i32 @cp_clean_rings(%struct.cp_private* %3)
  %5 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %6 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @CP_RING_BYTES, align 4
  %10 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %11 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %14 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dma_free_coherent(i32* %8, i32 %9, i32* %12, i32 %15)
  %17 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %18 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %20 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @cp_clean_rings(%struct.cp_private*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
