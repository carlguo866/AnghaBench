; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_gtucintel_guc.h_intel_guc_send_and_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_gtucintel_guc.h_intel_guc_send_and_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc*, i32*, i32, i32*, i32)* @intel_guc_send_and_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_guc_send_and_receive(%struct.intel_guc* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.intel_guc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %12 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.intel_guc*, i32*, i32, i32*, i32)**
  %14 = load i32 (%struct.intel_guc*, i32*, i32, i32*, i32)*, i32 (%struct.intel_guc*, i32*, i32, i32*, i32)** %13, align 8
  %15 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 %14(%struct.intel_guc* %15, i32* %16, i32 %17, i32* %18, i32 %19)
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
