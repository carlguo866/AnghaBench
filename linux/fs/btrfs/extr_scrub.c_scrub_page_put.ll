; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_page_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_page_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_page = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_page*)* @scrub_page_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_page_put(%struct.scrub_page* %0) #0 {
  %2 = alloca %struct.scrub_page*, align 8
  store %struct.scrub_page* %0, %struct.scrub_page** %2, align 8
  %3 = load %struct.scrub_page*, %struct.scrub_page** %2, align 8
  %4 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %3, i32 0, i32 1
  %5 = call i64 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.scrub_page*, %struct.scrub_page** %2, align 8
  %9 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.scrub_page*, %struct.scrub_page** %2, align 8
  %14 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @__free_page(i64 %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct.scrub_page*, %struct.scrub_page** %2, align 8
  %19 = call i32 @kfree(%struct.scrub_page* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @kfree(%struct.scrub_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
