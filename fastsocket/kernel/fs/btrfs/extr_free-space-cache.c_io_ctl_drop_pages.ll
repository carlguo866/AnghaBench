; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_drop_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_drop_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ctl = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ctl*)* @io_ctl_drop_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_ctl_drop_pages(%struct.io_ctl* %0) #0 {
  %2 = alloca %struct.io_ctl*, align 8
  %3 = alloca i32, align 4
  store %struct.io_ctl* %0, %struct.io_ctl** %2, align 8
  %4 = load %struct.io_ctl*, %struct.io_ctl** %2, align 8
  %5 = call i32 @io_ctl_unmap_page(%struct.io_ctl* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %47, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.io_ctl*, %struct.io_ctl** %2, align 8
  %9 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %6
  %13 = load %struct.io_ctl*, %struct.io_ctl** %2, align 8
  %14 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %12
  %22 = load %struct.io_ctl*, %struct.io_ctl** %2, align 8
  %23 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ClearPageChecked(i64 %28)
  %30 = load %struct.io_ctl*, %struct.io_ctl** %2, align 8
  %31 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @unlock_page(i64 %36)
  %38 = load %struct.io_ctl*, %struct.io_ctl** %2, align 8
  %39 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @page_cache_release(i64 %44)
  br label %46

46:                                               ; preds = %21, %12
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %6

50:                                               ; preds = %6
  ret void
}

declare dso_local i32 @io_ctl_unmap_page(%struct.io_ctl*) #1

declare dso_local i32 @ClearPageChecked(i64) #1

declare dso_local i32 @unlock_page(i64) #1

declare dso_local i32 @page_cache_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
