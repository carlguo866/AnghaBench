; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_enable_dvo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_enable_dvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_dvo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32)* }

@DVO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_enable_dvo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_dvo(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_dvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %7 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %8 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = call %struct.intel_dvo* @enc_to_intel_dvo(%struct.TYPE_8__* %14)
  store %struct.intel_dvo* %15, %struct.intel_dvo** %4, align 8
  %16 = load %struct.intel_dvo*, %struct.intel_dvo** %4, align 8
  %17 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @I915_READ(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DVO_ENABLE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @I915_WRITE(i32 %22, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @I915_READ(i32 %27)
  %29 = load %struct.intel_dvo*, %struct.intel_dvo** %4, align 8
  %30 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %33, align 8
  %35 = load %struct.intel_dvo*, %struct.intel_dvo** %4, align 8
  %36 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %35, i32 0, i32 0
  %37 = call i32 %34(%struct.TYPE_7__* %36, i32 1)
  ret void
}

declare dso_local %struct.intel_dvo* @enc_to_intel_dvo(%struct.TYPE_8__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
