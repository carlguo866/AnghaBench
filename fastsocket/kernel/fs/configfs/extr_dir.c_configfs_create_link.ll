; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_create_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_symlink = type { i32 }
%struct.dentry = type { %struct.configfs_dirent*, i32* }
%struct.configfs_dirent = type { i32 }

@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@CONFIGFS_ITEM_LINK = common dso_local global i32 0, align 4
@init_symlink = common dso_local global i32 0, align 4
@configfs_dentry_ops = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configfs_create_link(%struct.configfs_symlink* %0, %struct.dentry* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.configfs_symlink*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.configfs_dirent*, align 8
  store %struct.configfs_symlink* %0, %struct.configfs_symlink** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @S_IFLNK, align 4
  %11 = load i32, i32* @S_IRWXUGO, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.configfs_dirent*, %struct.configfs_dirent** %14, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = load %struct.configfs_symlink*, %struct.configfs_symlink** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @CONFIGFS_ITEM_LINK, align 4
  %20 = call i32 @configfs_make_dirent(%struct.configfs_dirent* %15, %struct.dentry* %16, %struct.configfs_symlink* %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %3
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @init_symlink, align 4
  %27 = call i32 @configfs_create(%struct.dentry* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 1
  store i32* @configfs_dentry_ops, i32** %32, align 8
  br label %48

33:                                               ; preds = %23
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load %struct.configfs_dirent*, %struct.configfs_dirent** %35, align 8
  store %struct.configfs_dirent* %36, %struct.configfs_dirent** %9, align 8
  %37 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %38 = icmp ne %struct.configfs_dirent* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %41 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %42 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %41, i32 0, i32 0
  %43 = call i32 @list_del_init(i32* %42)
  %44 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %45 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %46 = call i32 @configfs_put(%struct.configfs_dirent* %45)
  br label %47

47:                                               ; preds = %39, %33
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @configfs_make_dirent(%struct.configfs_dirent*, %struct.dentry*, %struct.configfs_symlink*, i32, i32) #1

declare dso_local i32 @configfs_create(%struct.dentry*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @configfs_put(%struct.configfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
