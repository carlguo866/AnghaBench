; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr_trusted.c_ext2_xattr_trusted_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr_trusted.c_ext2_xattr_trusted_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@EXT2_XATTR_INDEX_TRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64)* @ext2_xattr_trusted_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_trusted_get(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %23

16:                                               ; preds = %4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = load i32, i32* @EXT2_XATTR_INDEX_TRUSTED, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @ext2_xattr_get(%struct.inode* %17, i32 %18, i8* %19, i8* %20, i64 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ext2_xattr_get(%struct.inode*, i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
