; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_flip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srcu_struct*)* @srcu_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srcu_flip(%struct.srcu_struct* %0) #0 {
  %2 = alloca %struct.srcu_struct*, align 8
  store %struct.srcu_struct* %0, %struct.srcu_struct** %2, align 8
  %3 = call i32 (...) @smp_mb()
  %4 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %5 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.srcu_struct*, %struct.srcu_struct** %2, align 8
  %8 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @WRITE_ONCE(i64 %6, i64 %10)
  %12 = call i32 (...) @smp_mb()
  ret void
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
