; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c___munlock_isolation_failed.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c___munlock_isolation_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@UNEVICTABLE_PGSTRANDED = common dso_local global i32 0, align 4
@UNEVICTABLE_PGMUNLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @__munlock_isolation_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__munlock_isolation_failed(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i64 @PageUnevictable(%struct.page* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @UNEVICTABLE_PGSTRANDED, align 4
  %8 = call i32 @__count_vm_event(i32 %7)
  br label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @UNEVICTABLE_PGMUNLOCKED, align 4
  %11 = call i32 @__count_vm_event(i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

declare dso_local i64 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @__count_vm_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
