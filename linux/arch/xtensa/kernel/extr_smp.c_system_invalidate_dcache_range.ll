; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_smp.c_system_invalidate_dcache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_smp.c_system_invalidate_dcache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flush_data = type { i64, i64 }

@ipi_invalidate_dcache_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @system_invalidate_dcache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @system_invalidate_dcache_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.flush_data, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = getelementptr inbounds %struct.flush_data, %struct.flush_data* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  store i64 %7, i64* %6, align 8
  %8 = getelementptr inbounds %struct.flush_data, %struct.flush_data* %5, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i32, i32* @ipi_invalidate_dcache_range, align 4
  %11 = call i32 @on_each_cpu(i32 %10, %struct.flush_data* %5, i32 1)
  ret void
}

declare dso_local i32 @on_each_cpu(i32, %struct.flush_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
