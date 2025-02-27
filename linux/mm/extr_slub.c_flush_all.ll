; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_flush_all.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@has_cpu_slab = common dso_local global i32 0, align 4
@flush_cpu_slab = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*)* @flush_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_all(%struct.kmem_cache* %0) #0 {
  %2 = alloca %struct.kmem_cache*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %2, align 8
  %3 = load i32, i32* @has_cpu_slab, align 4
  %4 = load i32, i32* @flush_cpu_slab, align 4
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call i32 @on_each_cpu_cond(i32 %3, i32 %4, %struct.kmem_cache* %5, i32 1, i32 %6)
  ret void
}

declare dso_local i32 @on_each_cpu_cond(i32, i32, %struct.kmem_cache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
