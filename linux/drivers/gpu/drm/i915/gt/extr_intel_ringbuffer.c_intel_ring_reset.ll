; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_ring_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring = type { i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ring_reset(%struct.intel_ring* %0, i8* %1) #0 {
  %3 = alloca %struct.intel_ring*, align 8
  %4 = alloca i8*, align 8
  store %struct.intel_ring* %0, %struct.intel_ring** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.intel_ring*, %struct.intel_ring** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @intel_ring_wrap(%struct.intel_ring* %5, i8* %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.intel_ring*, %struct.intel_ring** %3, align 8
  %10 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.intel_ring*, %struct.intel_ring** %3, align 8
  %13 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.intel_ring*, %struct.intel_ring** %3, align 8
  %16 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.intel_ring*, %struct.intel_ring** %3, align 8
  %18 = call i32 @intel_ring_update_space(%struct.intel_ring* %17)
  ret void
}

declare dso_local i8* @intel_ring_wrap(%struct.intel_ring*, i8*) #1

declare dso_local i32 @intel_ring_update_space(%struct.intel_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
