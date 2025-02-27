; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_duplicate_memory_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_duplicate_memory_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }

@BM_END_OF_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memory_bitmap*, %struct.memory_bitmap*)* @duplicate_memory_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @duplicate_memory_bitmap(%struct.memory_bitmap* %0, %struct.memory_bitmap* %1) #0 {
  %3 = alloca %struct.memory_bitmap*, align 8
  %4 = alloca %struct.memory_bitmap*, align 8
  %5 = alloca i64, align 8
  store %struct.memory_bitmap* %0, %struct.memory_bitmap** %3, align 8
  store %struct.memory_bitmap* %1, %struct.memory_bitmap** %4, align 8
  %6 = load %struct.memory_bitmap*, %struct.memory_bitmap** %4, align 8
  %7 = call i32 @memory_bm_position_reset(%struct.memory_bitmap* %6)
  %8 = load %struct.memory_bitmap*, %struct.memory_bitmap** %4, align 8
  %9 = call i64 @memory_bm_next_pfn(%struct.memory_bitmap* %8)
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @BM_END_OF_MAP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.memory_bitmap*, %struct.memory_bitmap** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @memory_bm_set_bit(%struct.memory_bitmap* %15, i64 %16)
  %18 = load %struct.memory_bitmap*, %struct.memory_bitmap** %4, align 8
  %19 = call i64 @memory_bm_next_pfn(%struct.memory_bitmap* %18)
  store i64 %19, i64* %5, align 8
  br label %10

20:                                               ; preds = %10
  ret void
}

declare dso_local i32 @memory_bm_position_reset(%struct.memory_bitmap*) #1

declare dso_local i64 @memory_bm_next_pfn(%struct.memory_bitmap*) #1

declare dso_local i32 @memory_bm_set_bit(%struct.memory_bitmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
