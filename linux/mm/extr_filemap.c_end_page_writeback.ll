; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_end_page_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_end_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PG_writeback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_page_writeback(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i64 @PageReclaim(%struct.page* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @ClearPageReclaim(%struct.page* %7)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @rotate_reclaimable_page(%struct.page* %9)
  br label %11

11:                                               ; preds = %6, %1
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call i32 @test_clear_page_writeback(%struct.page* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %11
  %18 = call i32 (...) @smp_mb__after_atomic()
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = load i32, i32* @PG_writeback, align 4
  %21 = call i32 @wake_up_page(%struct.page* %19, i32 %20)
  ret void
}

declare dso_local i64 @PageReclaim(%struct.page*) #1

declare dso_local i32 @ClearPageReclaim(%struct.page*) #1

declare dso_local i32 @rotate_reclaimable_page(%struct.page*) #1

declare dso_local i32 @test_clear_page_writeback(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
