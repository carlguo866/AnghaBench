; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c_barrier_to_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c_barrier_to_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.active_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_engine_cs* (%struct.active_node*)* @barrier_to_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_engine_cs* @barrier_to_engine(%struct.active_node* %0) #0 {
  %2 = alloca %struct.active_node*, align 8
  store %struct.active_node* %0, %struct.active_node** %2, align 8
  %3 = load %struct.active_node*, %struct.active_node** %2, align 8
  %4 = getelementptr inbounds %struct.active_node, %struct.active_node* %3, i32 0, i32 0
  %5 = call i32 @is_barrier(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @GEM_BUG_ON(i32 %8)
  %10 = load %struct.active_node*, %struct.active_node** %2, align 8
  %11 = call %struct.intel_engine_cs* @__barrier_to_engine(%struct.active_node* %10)
  ret %struct.intel_engine_cs* %11
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @is_barrier(i32*) #1

declare dso_local %struct.intel_engine_cs* @__barrier_to_engine(%struct.active_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
