; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c___zpl_xattr_user_get.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_xattr.c___zpl_xattr_user_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@ZSB_XATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@XATTR_USER_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64)* @__zpl_xattr_user_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zpl_xattr_user_get(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %41

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.TYPE_2__* @ITOZSB(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ZSB_XATTR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load i32, i32* @XATTR_USER_PREFIX, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %31)
  store i8* %32, i8** %10, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @zpl_xattr_get(%struct.inode* %33, i8* %34, i8* %35, i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @kmem_strfree(i8* %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %29, %26, %15
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @ITOZSB(%struct.inode*) #1

declare dso_local i8* @kmem_asprintf(i8*, i32, i8*) #1

declare dso_local i32 @zpl_xattr_get(%struct.inode*, i8*, i8*, i64) #1

declare dso_local i32 @kmem_strfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
