; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_page_count_clean_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_page_count_clean_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_page_count_clean_buffers(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call %struct.buffer_head* @page_buffers(%struct.page* %12)
  store %struct.buffer_head* %13, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %13, %struct.buffer_head** %9, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %45, %3
  %15 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %17 = icmp ne %struct.buffer_head* %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ true, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %50

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = call i32 @buffer_dirty(%struct.buffer_head* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %37, %33, %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %7, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 1
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  store %struct.buffer_head* %49, %struct.buffer_head** %9, align 8
  br label %14

50:                                               ; preds = %22
  %51 = load i32, i32* %11, align 4
  ret i32 %51
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
