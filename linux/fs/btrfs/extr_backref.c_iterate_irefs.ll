; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_backref.c_iterate_irefs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_backref.c_iterate_irefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.btrfs_root*, %struct.btrfs_path*, i32*, i8*)* @iterate_irefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate_irefs(i32 %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %16 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @iterate_inode_refs(i32 %14, %struct.btrfs_root* %15, %struct.btrfs_path* %16, i32* %17, i8* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %13, align 4
  br label %33

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %50

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @iterate_inode_extrefs(i32 %34, %struct.btrfs_root* %35, %struct.btrfs_path* %36, i32* %37, i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %50

48:                                               ; preds = %44, %33
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %47, %30
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @iterate_inode_refs(i32, %struct.btrfs_root*, %struct.btrfs_path*, i32*, i8*) #1

declare dso_local i32 @iterate_inode_extrefs(i32, %struct.btrfs_root*, %struct.btrfs_path*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
