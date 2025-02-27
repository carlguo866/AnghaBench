; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_bsd_ring_write_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_bsd_ring_write_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@GEN6_BSD_SLEEP_PSMI_CONTROL = common dso_local global i32 0, align 4
@GEN6_BSD_SLEEP_MSG_DISABLE = common dso_local global i32 0, align 4
@GEN6_BSD_RNCID = common dso_local global i32 0, align 4
@GEN6_BSD_SLEEP_INDICATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"timed out waiting for the BSD ring to wake up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_ring_buffer*, i32)* @gen6_bsd_ring_write_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_bsd_ring_write_tail(%struct.intel_ring_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @GEN6_BSD_SLEEP_PSMI_CONTROL, align 4
  %12 = load i32, i32* @GEN6_BSD_SLEEP_MSG_DISABLE, align 4
  %13 = call i32 @_MASKED_BIT_ENABLE(i32 %12)
  %14 = call i32 @I915_WRITE(i32 %11, i32 %13)
  %15 = load i32, i32* @GEN6_BSD_RNCID, align 4
  %16 = call i32 @I915_WRITE64(i32 %15, i32 0)
  %17 = load i32, i32* @GEN6_BSD_SLEEP_PSMI_CONTROL, align 4
  %18 = call i32 @I915_READ(i32 %17)
  %19 = load i32, i32* @GEN6_BSD_SLEEP_INDICATOR, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @wait_for(i32 %22, i32 50)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %2
  %28 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @I915_WRITE_TAIL(%struct.intel_ring_buffer* %28, i32 %29)
  %31 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @RING_TAIL(i32 %33)
  %35 = call i32 @POSTING_READ(i32 %34)
  %36 = load i32, i32* @GEN6_BSD_SLEEP_PSMI_CONTROL, align 4
  %37 = load i32, i32* @GEN6_BSD_SLEEP_MSG_DISABLE, align 4
  %38 = call i32 @_MASKED_BIT_DISABLE(i32 %37)
  %39 = call i32 @I915_WRITE(i32 %36, i32 %38)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @I915_WRITE64(i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_WRITE_TAIL(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @RING_TAIL(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
