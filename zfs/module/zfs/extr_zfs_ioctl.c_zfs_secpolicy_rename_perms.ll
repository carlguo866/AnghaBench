; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_rename_perms.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_secpolicy_rename_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_RENAME = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_MOUNT = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_secpolicy_rename_perms(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @ZFS_DELEG_PERM_RENAME, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @zfs_secpolicy_write_perms(i8* %16, i32 %17, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @ZFS_DELEG_PERM_MOUNT, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @zfs_secpolicy_write_perms(i8* %24, i32 %25, i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %54

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = trunc i64 %13 to i32
  %34 = call i32 @zfs_get_parent(i8* %32, i8* %15, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %54

38:                                               ; preds = %31
  %39 = load i32, i32* @ZFS_DELEG_PERM_CREATE, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @zfs_secpolicy_write_perms(i8* %15, i32 %39, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %54

45:                                               ; preds = %38
  %46 = load i32, i32* @ZFS_DELEG_PERM_MOUNT, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @zfs_secpolicy_write_perms(i8* %15, i32 %46, i32* %47)
  store i32 %48, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %52, %50, %43, %36, %29, %21
  %55 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i32, i32*) #2

declare dso_local i32 @zfs_get_parent(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
