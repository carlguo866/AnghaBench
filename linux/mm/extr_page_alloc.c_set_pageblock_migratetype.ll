; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_set_pageblock_migratetype.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_set_pageblock_migratetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@page_group_by_mobility_disabled = common dso_local global i64 0, align 8
@MIGRATE_PCPTYPES = common dso_local global i32 0, align 4
@MIGRATE_UNMOVABLE = common dso_local global i32 0, align 4
@PB_migrate = common dso_local global i32 0, align 4
@PB_migrate_end = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_pageblock_migratetype(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @page_group_by_mobility_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MIGRATE_PCPTYPES, align 4
  %10 = icmp slt i32 %8, %9
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @MIGRATE_UNMOVABLE, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* @PB_migrate, align 4
  %23 = load i32, i32* @PB_migrate_end, align 4
  %24 = call i32 @set_pageblock_flags_group(%struct.page* %19, i64 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_pageblock_flags_group(%struct.page*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
