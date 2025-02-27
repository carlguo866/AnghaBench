; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_igt_spinner.c_igt_wait_for_spinner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_igt_spinner.c_igt_wait_for_spinner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igt_spinner = type { i32 }
%struct.i915_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igt_wait_for_spinner(%struct.igt_spinner* %0, %struct.i915_request* %1) #0 {
  %3 = alloca %struct.igt_spinner*, align 8
  %4 = alloca %struct.i915_request*, align 8
  store %struct.igt_spinner* %0, %struct.igt_spinner** %3, align 8
  store %struct.i915_request* %1, %struct.i915_request** %4, align 8
  %5 = load %struct.igt_spinner*, %struct.igt_spinner** %3, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %7 = call i32 @hws_seqno(%struct.igt_spinner* %5, %struct.i915_request* %6)
  %8 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %9 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @i915_seqno_passed(i32 %7, i32 %11)
  %13 = call i64 @wait_for_us(i32 %12, i32 10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.igt_spinner*, %struct.igt_spinner** %3, align 8
  %17 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %18 = call i32 @hws_seqno(%struct.igt_spinner* %16, %struct.i915_request* %17)
  %19 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %20 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @i915_seqno_passed(i32 %18, i32 %22)
  %24 = call i64 @wait_for(i32 %23, i32 1000)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %15, %2
  %27 = phi i1 [ false, %2 ], [ %25, %15 ]
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @wait_for_us(i32, i32) #1

declare dso_local i32 @i915_seqno_passed(i32, i32) #1

declare dso_local i32 @hws_seqno(%struct.igt_spinner*, %struct.i915_request*) #1

declare dso_local i64 @wait_for(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
