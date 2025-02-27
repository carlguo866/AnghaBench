; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_ucintel_guc.h_intel_guc_disable_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_ucintel_guc.h_intel_guc_disable_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc*, i32)* @intel_guc_disable_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_guc_disable_msg(%struct.intel_guc* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %6 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %11 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_irq(i32* %15)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
