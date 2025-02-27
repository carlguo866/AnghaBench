; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_get_deferred_split_queue.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_get_deferred_split_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deferred_split = type { i32 }
%struct.page = type { i32 }
%struct.pglist_data = type { %struct.deferred_split }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.deferred_split* (%struct.page*)* @get_deferred_split_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.deferred_split* @get_deferred_split_queue(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.pglist_data*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call i32 @page_to_nid(%struct.page* %4)
  %6 = call %struct.pglist_data* @NODE_DATA(i32 %5)
  store %struct.pglist_data* %6, %struct.pglist_data** %3, align 8
  %7 = load %struct.pglist_data*, %struct.pglist_data** %3, align 8
  %8 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %7, i32 0, i32 0
  ret %struct.deferred_split* %8
}

declare dso_local %struct.pglist_data* @NODE_DATA(i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
