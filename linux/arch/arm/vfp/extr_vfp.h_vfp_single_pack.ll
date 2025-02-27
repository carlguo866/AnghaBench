; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfp.h_vfp_single_pack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfp.h_vfp_single_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i32, i32, i32 }

@VFP_SINGLE_MANTISSA_BITS = common dso_local global i32 0, align 4
@VFP_SINGLE_LOW_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfp_single*)* @vfp_single_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_single_pack(%struct.vfp_single* %0) #0 {
  %2 = alloca %struct.vfp_single*, align 8
  %3 = alloca i32, align 4
  store %struct.vfp_single* %0, %struct.vfp_single** %2, align 8
  %4 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %5 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 16
  %8 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %9 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VFP_SINGLE_MANTISSA_BITS, align 4
  %12 = shl i32 %10, %11
  %13 = add nsw i32 %7, %12
  %14 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %15 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VFP_SINGLE_LOW_BITS, align 4
  %18 = ashr i32 %16, %17
  %19 = add nsw i32 %13, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
