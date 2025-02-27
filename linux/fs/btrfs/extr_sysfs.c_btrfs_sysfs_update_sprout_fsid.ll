; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_update_sprout_fsid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_update_sprout_fsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_devices = type { i32, i32 }

@BTRFS_UUID_UNPARSED_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pU\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"sysfs: failed to create fsid for sprout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_sysfs_update_sprout_fsid(%struct.btrfs_fs_devices* %0, i32* %1) #0 {
  %3 = alloca %struct.btrfs_fs_devices*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.btrfs_fs_devices* %0, %struct.btrfs_fs_devices** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @BTRFS_UUID_UNPARSED_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @BTRFS_UUID_UNPARSED_SIZE, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %14, i32 0, i32 1
  %16 = call i64 @kobject_rename(i32* %15, i8* %10)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @btrfs_warn(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %24)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32*) #2

declare dso_local i64 @kobject_rename(i32*, i8*) #2

declare dso_local i32 @btrfs_warn(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
