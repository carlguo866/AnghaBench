; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_wtdma_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_wtdma_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@OFFSET_MASK = common dso_local global i32 0, align 4
@IE_MASK = common dso_local global i32 0, align 4
@IE_SHIFT = common dso_local global i32 0, align 4
@DIR_SHIFT = common dso_local global i32 0, align 4
@FMT_MASK = common dso_local global i32 0, align 4
@FMT_SHIFT = common dso_local global i32 0, align 4
@VORTEX_WTDMA_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32, i32)* @vortex_wtdma_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_wtdma_setmode(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %13, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @OFFSET_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OFFSET_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = or i32 %27, %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @IE_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @IE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = or i32 %42, %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @DIR_SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FMT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @FMT_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @FMT_MASK, align 4
  %66 = and i32 %64, %65
  %67 = or i32 %61, %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @VORTEX_WTDMA_CTRL, align 8
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hwwrite(i32 %72, i64 %77, i32 %80)
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
