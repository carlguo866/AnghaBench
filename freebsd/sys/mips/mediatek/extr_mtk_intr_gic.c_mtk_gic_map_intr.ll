; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_gic.c_mtk_gic_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_gic.c_mtk_gic_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @mtk_gic_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gic_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intr_map_data*, align 8
  %6 = alloca %struct.intr_irqsrc**, align 8
  store i32 %0, i32* %4, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %5, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %6, align 8
  %7 = load i32, i32* @ENOTSUP, align 4
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
