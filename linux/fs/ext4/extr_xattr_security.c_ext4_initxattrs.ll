; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr_security.c_ext4_initxattrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr_security.c_ext4_initxattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xattr = type { i32, i32, i32* }

@EXT4_XATTR_INDEX_SECURITY = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.xattr*, i8*)* @ext4_initxattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_initxattrs(%struct.inode* %0, %struct.xattr* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.xattr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xattr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.xattr* %1, %struct.xattr** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.xattr*, %struct.xattr** %5, align 8
  store %struct.xattr* %12, %struct.xattr** %7, align 8
  br label %13

13:                                               ; preds = %37, %3
  %14 = load %struct.xattr*, %struct.xattr** %7, align 8
  %15 = getelementptr inbounds %struct.xattr, %struct.xattr* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load i32, i32* @EXT4_XATTR_INDEX_SECURITY, align 4
  %22 = load %struct.xattr*, %struct.xattr** %7, align 8
  %23 = getelementptr inbounds %struct.xattr, %struct.xattr* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.xattr*, %struct.xattr** %7, align 8
  %26 = getelementptr inbounds %struct.xattr, %struct.xattr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xattr*, %struct.xattr** %7, align 8
  %29 = getelementptr inbounds %struct.xattr, %struct.xattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @XATTR_CREATE, align 4
  %32 = call i32 @ext4_xattr_set_handle(i32* %19, %struct.inode* %20, i32 %21, i32* %24, i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %40

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.xattr*, %struct.xattr** %7, align 8
  %39 = getelementptr inbounds %struct.xattr, %struct.xattr* %38, i32 1
  store %struct.xattr* %39, %struct.xattr** %7, align 8
  br label %13

40:                                               ; preds = %35, %13
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @ext4_xattr_set_handle(i32*, %struct.inode*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
