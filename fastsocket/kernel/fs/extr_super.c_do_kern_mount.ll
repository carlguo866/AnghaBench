; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_do_kern_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_do_kern_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file_system_type = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FS_HAS_SUBTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @do_kern_mount(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_system_type*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.file_system_type* @get_fs_type(i8* %12)
  store %struct.file_system_type* %13, %struct.file_system_type** %10, align 8
  %14 = load %struct.file_system_type*, %struct.file_system_type** %10, align 8
  %15 = icmp ne %struct.file_system_type* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.vfsmount* @ERR_PTR(i32 %18)
  store %struct.vfsmount* %19, %struct.vfsmount** %5, align 8
  br label %51

20:                                               ; preds = %4
  %21 = load %struct.file_system_type*, %struct.file_system_type** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* %21, i32 %22, i8* %23, i8* %24)
  store %struct.vfsmount* %25, %struct.vfsmount** %11, align 8
  %26 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %27 = call i32 @IS_ERR(%struct.vfsmount* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %20
  %30 = load %struct.file_system_type*, %struct.file_system_type** %10, align 8
  %31 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FS_HAS_SUBTYPE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %38 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call %struct.vfsmount* @fs_set_subtype(%struct.vfsmount* %44, i8* %45)
  store %struct.vfsmount* %46, %struct.vfsmount** %11, align 8
  br label %47

47:                                               ; preds = %43, %36, %29, %20
  %48 = load %struct.file_system_type*, %struct.file_system_type** %10, align 8
  %49 = call i32 @put_filesystem(%struct.file_system_type* %48)
  %50 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  store %struct.vfsmount* %50, %struct.vfsmount** %5, align 8
  br label %51

51:                                               ; preds = %47, %16
  %52 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %52
}

declare dso_local %struct.file_system_type* @get_fs_type(i8*) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type*, i32, i8*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @fs_set_subtype(%struct.vfsmount*, i8*) #1

declare dso_local i32 @put_filesystem(%struct.file_system_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
