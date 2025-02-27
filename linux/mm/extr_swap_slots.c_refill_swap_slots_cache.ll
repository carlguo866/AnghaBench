; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_refill_swap_slots_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_refill_swap_slots_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_slots_cache = type { i32, i32, i64 }

@use_swap_slot_cache = common dso_local global i32 0, align 4
@swap_slot_cache_active = common dso_local global i64 0, align 8
@SWAP_SLOTS_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_slots_cache*)* @refill_swap_slots_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refill_swap_slots_cache(%struct.swap_slots_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swap_slots_cache*, align 8
  store %struct.swap_slots_cache* %0, %struct.swap_slots_cache** %3, align 8
  %4 = load i32, i32* @use_swap_slot_cache, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %8 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %29

12:                                               ; preds = %6
  %13 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %14 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* @swap_slot_cache_active, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* @SWAP_SLOTS_CACHE_SIZE, align 4
  %19 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %20 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_swap_pages(i32 %18, i32 %21, i32 1)
  %23 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %24 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %27 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @get_swap_pages(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
