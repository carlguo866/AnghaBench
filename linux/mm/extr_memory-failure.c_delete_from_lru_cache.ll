; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_delete_from_lru_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_delete_from_lru_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @delete_from_lru_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_from_lru_cache(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %4 = load %struct.page*, %struct.page** %3, align 8
  %5 = call i32 @isolate_lru_page(%struct.page* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @ClearPageActive(%struct.page* %8)
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @ClearPageUnevictable(%struct.page* %10)
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @mem_cgroup_uncharge(%struct.page* %12)
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @put_page(%struct.page* %14)
  store i32 0, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %7
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @ClearPageActive(%struct.page*) #1

declare dso_local i32 @ClearPageUnevictable(%struct.page*) #1

declare dso_local i32 @mem_cgroup_uncharge(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
