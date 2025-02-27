; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c___fuse_direct_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c___fuse_direct_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_priv = type { %struct.file* }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_io_priv*, %struct.iovec*, i64, i32*, i64)* @__fuse_direct_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fuse_direct_read(%struct.fuse_io_priv* %0, %struct.iovec* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_io_priv*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.file*, align 8
  %14 = alloca %struct.inode*, align 8
  store %struct.fuse_io_priv* %0, %struct.fuse_io_priv** %7, align 8
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %7, align 8
  %16 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %15, i32 0, i32 0
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %13, align 8
  %18 = load %struct.file*, %struct.file** %13, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %14, align 8
  %24 = load %struct.inode*, %struct.inode** %14, align 8
  %25 = call i64 @is_bad_inode(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %40

30:                                               ; preds = %5
  %31 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %7, align 8
  %32 = load %struct.iovec*, %struct.iovec** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @fuse_direct_io(%struct.fuse_io_priv* %31, %struct.iovec* %32, i64 %33, i64 %34, i32* %35, i32 0)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.inode*, %struct.inode** %14, align 8
  %38 = call i32 @fuse_invalidate_attr(%struct.inode* %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @fuse_direct_io(%struct.fuse_io_priv*, %struct.iovec*, i64, i64, i32*, i32) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
