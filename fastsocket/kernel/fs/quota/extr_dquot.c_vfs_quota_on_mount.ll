; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_quota_on_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_quota_on_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@DQUOT_USAGE_ENABLED = common dso_local global i32 0, align 4
@DQUOT_LIMITS_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_quota_on_mount(%struct.super_block* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call %struct.dentry* @lookup_one_len(i8* %19, %struct.TYPE_4__* %22, i32 %24)
  store %struct.dentry* %25, %struct.dentry** %10, align 8
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.dentry*, %struct.dentry** %10, align 8
  %34 = call i64 @IS_ERR(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load %struct.dentry*, %struct.dentry** %10, align 8
  %38 = call i32 @PTR_ERR(%struct.dentry* %37)
  store i32 %38, i32* %5, align 4
  br label %67

39:                                               ; preds = %4
  %40 = load %struct.dentry*, %struct.dentry** %10, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %63

47:                                               ; preds = %39
  %48 = load %struct.dentry*, %struct.dentry** %10, align 8
  %49 = call i32 @security_quota_on(%struct.dentry* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load %struct.dentry*, %struct.dentry** %10, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @DQUOT_USAGE_ENABLED, align 4
  %59 = load i32, i32* @DQUOT_LIMITS_ENABLED, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @vfs_load_quota_inode(i32 %55, i32 %56, i32 %57, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %52, %47
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.dentry*, %struct.dentry** %10, align 8
  %65 = call i32 @dput(%struct.dentry* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %36
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @security_quota_on(%struct.dentry*) #1

declare dso_local i32 @vfs_load_quota_inode(i32, i32, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
