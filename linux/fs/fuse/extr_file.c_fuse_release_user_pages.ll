; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_release_user_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_release_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_args_pages = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_args_pages*, i32)* @fuse_release_user_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_release_user_pages(%struct.fuse_args_pages* %0, i32 %1) #0 {
  %3 = alloca %struct.fuse_args_pages*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fuse_args_pages* %0, %struct.fuse_args_pages** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %3, align 8
  %9 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %3, align 8
  %17 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @set_page_dirty_lock(i32 %22)
  br label %24

24:                                               ; preds = %15, %12
  %25 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %3, align 8
  %26 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @put_page(i32 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i32 @set_page_dirty_lock(i32) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
