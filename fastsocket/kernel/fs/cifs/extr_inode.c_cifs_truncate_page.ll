; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_truncate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_truncate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32)* @cifs_truncate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_truncate_page(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.address_space*, %struct.address_space** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.page* @grab_cache_page(%struct.address_space* %17, i32 %18)
  store %struct.page* %19, %struct.page** %8, align 8
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %29 = call i32 @zero_user_segment(%struct.page* %26, i32 %27, i32 %28)
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = call i32 @unlock_page(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = call i32 @page_cache_release(%struct.page* %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %25, %22
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
