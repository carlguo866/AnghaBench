; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/cpu/extr_cache.c___invalidate_icache_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/cpu/extr_cache.c___invalidate_icache_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__invalidate_icache_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 2), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @local_irq_save(i32 %6)
  %8 = call i32 (...) @__disable_icache()
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %16, %5
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 8
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @__invalidate_icache(i32 %14)
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 4
  %18 = load i32, i32* %1, align 4
  %19 = add i32 %18, %17
  store i32 %19, i32* %1, align 4
  br label %9

20:                                               ; preds = %9
  %21 = call i32 (...) @__enable_icache()
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @local_irq_restore(i32 %22)
  br label %24

24:                                               ; preds = %20, %0
  ret void
}

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @__disable_icache(...) #1

declare dso_local i32 @__invalidate_icache(i32) #1

declare dso_local i32 @__enable_icache(...) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
