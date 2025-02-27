; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_zero_partial_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_zero_partial_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32)* @ceph_zero_partial_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_zero_partial_page(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.page* @find_lock_page(i32 %14, i32 %15)
  store %struct.page* %16, %struct.page** %7, align 8
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = call i32 @wait_on_page_writeback(%struct.page* %20)
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @zero_user(%struct.page* %22, i32 %26, i32 %27)
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = call i32 @unlock_page(%struct.page* %29)
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = call i32 @put_page(%struct.page* %31)
  br label %33

33:                                               ; preds = %19, %3
  ret void
}

declare dso_local %struct.page* @find_lock_page(i32, i32) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
