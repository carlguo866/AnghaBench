; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_push_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_push_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { i32 }

@QB_SDQCR_SRC_SHIFT = common dso_local global i32 0, align 4
@QB_SDQCR_SRC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qbman_swp_push_get(%struct.qbman_swp* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qbman_swp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.qbman_swp* %0, %struct.qbman_swp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %9 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @QB_SDQCR_SRC_SHIFT, align 4
  %12 = ashr i32 %10, %11
  %13 = load i32, i32* @QB_SDQCR_SRC_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
