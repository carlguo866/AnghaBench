; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_snapshots_sync.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_snapshots_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@newidx_fds = common dso_local global i32 0, align 4
@newidx_fd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s syncing fail. %m\0A\00", align 1
@filename_newidx = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @snapshots_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshots_sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %44, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @newidx_fds, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = load i32*, i32** @newidx_fd, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %7
  %15 = load i32*, i32** @newidx_fd, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @fsync(i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = load i32*, i32** @filename_newidx, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** @newidx_fd, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @close(i32 %33)
  %35 = load i32*, i32** @newidx_fd, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 -1, i32* %38, align 4
  br label %42

39:                                               ; preds = %14
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %22
  br label %43

43:                                               ; preds = %42, %7
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %3

47:                                               ; preds = %3
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
