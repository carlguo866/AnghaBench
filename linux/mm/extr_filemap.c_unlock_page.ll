; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_unlock_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_unlock_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PG_waiters = common dso_local global i32 0, align 4
@PG_locked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unlock_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load i32, i32* @PG_waiters, align 4
  %4 = icmp ne i32 %3, 7
  %5 = zext i1 %4 to i32
  %6 = call i32 @BUILD_BUG_ON(i32 %5)
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call %struct.page* @compound_head(%struct.page* %7)
  store %struct.page* %8, %struct.page** %2, align 8
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @PageLocked(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = call i32 @VM_BUG_ON_PAGE(i32 %13, %struct.page* %14)
  %16 = load i32, i32* @PG_locked, align 4
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = call i64 @clear_bit_unlock_is_negative_byte(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = load i32, i32* @PG_locked, align 4
  %24 = call i32 @wake_up_page_bit(%struct.page* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @clear_bit_unlock_is_negative_byte(i32, i32*) #1

declare dso_local i32 @wake_up_page_bit(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
