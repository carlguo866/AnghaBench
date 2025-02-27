; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.kstat = type { i32 }
%struct.v9fs_session_info = type { i64 }
%struct.p9_fid = type opaque
%struct.p9_wstat = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"dentry: %p\0A\00", align 1
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.kstat*, i32, i32)* @v9fs_vfs_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.v9fs_session_info*, align 8
  %12 = alloca %struct.p9_fid*, align 8
  %13 = alloca %struct.p9_wstat*, align 8
  store %struct.path* %0, %struct.path** %6, align 8
  store %struct.kstat* %1, %struct.kstat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.path*, %struct.path** %6, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %10, align 8
  %17 = load i32, i32* @P9_DEBUG_VFS, align 4
  %18 = load %struct.dentry*, %struct.dentry** %10, align 8
  %19 = call i32 @p9_debug(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.dentry* %18)
  %20 = load %struct.dentry*, %struct.dentry** %10, align 8
  %21 = call %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry* %20)
  store %struct.v9fs_session_info* %21, %struct.v9fs_session_info** %11, align 8
  %22 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %11, align 8
  %23 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CACHE_LOOSE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %11, align 8
  %29 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CACHE_FSCACHE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %4
  %34 = load %struct.dentry*, %struct.dentry** %10, align 8
  %35 = call i32 @d_inode(%struct.dentry* %34)
  %36 = load %struct.kstat*, %struct.kstat** %7, align 8
  %37 = call i32 @generic_fillattr(i32 %35, %struct.kstat* %36)
  store i32 0, i32* %5, align 4
  br label %76

38:                                               ; preds = %27
  %39 = load %struct.dentry*, %struct.dentry** %10, align 8
  %40 = call %struct.p9_wstat* @v9fs_fid_lookup(%struct.dentry* %39)
  %41 = bitcast %struct.p9_wstat* %40 to %struct.p9_fid*
  store %struct.p9_fid* %41, %struct.p9_fid** %12, align 8
  %42 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %43 = bitcast %struct.p9_fid* %42 to %struct.p9_wstat*
  %44 = call i64 @IS_ERR(%struct.p9_wstat* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %48 = bitcast %struct.p9_fid* %47 to %struct.p9_wstat*
  %49 = call i32 @PTR_ERR(%struct.p9_wstat* %48)
  store i32 %49, i32* %5, align 4
  br label %76

50:                                               ; preds = %38
  %51 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %52 = bitcast %struct.p9_fid* %51 to %struct.p9_wstat*
  %53 = call %struct.p9_wstat* @p9_client_stat(%struct.p9_wstat* %52)
  store %struct.p9_wstat* %53, %struct.p9_wstat** %13, align 8
  %54 = load %struct.p9_wstat*, %struct.p9_wstat** %13, align 8
  %55 = call i64 @IS_ERR(%struct.p9_wstat* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.p9_wstat*, %struct.p9_wstat** %13, align 8
  %59 = call i32 @PTR_ERR(%struct.p9_wstat* %58)
  store i32 %59, i32* %5, align 4
  br label %76

60:                                               ; preds = %50
  %61 = load %struct.p9_wstat*, %struct.p9_wstat** %13, align 8
  %62 = load %struct.dentry*, %struct.dentry** %10, align 8
  %63 = call i32 @d_inode(%struct.dentry* %62)
  %64 = load %struct.dentry*, %struct.dentry** %10, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @v9fs_stat2inode(%struct.p9_wstat* %61, i32 %63, i32 %66, i32 0)
  %68 = load %struct.dentry*, %struct.dentry** %10, align 8
  %69 = call i32 @d_inode(%struct.dentry* %68)
  %70 = load %struct.kstat*, %struct.kstat** %7, align 8
  %71 = call i32 @generic_fillattr(i32 %69, %struct.kstat* %70)
  %72 = load %struct.p9_wstat*, %struct.p9_wstat** %13, align 8
  %73 = call i32 @p9stat_free(%struct.p9_wstat* %72)
  %74 = load %struct.p9_wstat*, %struct.p9_wstat** %13, align 8
  %75 = call i32 @kfree(%struct.p9_wstat* %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %60, %57, %46, %33
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.dentry*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry*) #1

declare dso_local i32 @generic_fillattr(i32, %struct.kstat*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.p9_wstat* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_wstat*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_wstat*) #1

declare dso_local %struct.p9_wstat* @p9_client_stat(%struct.p9_wstat*) #1

declare dso_local i32 @v9fs_stat2inode(%struct.p9_wstat*, i32, i32, i32) #1

declare dso_local i32 @p9stat_free(%struct.p9_wstat*) #1

declare dso_local i32 @kfree(%struct.p9_wstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
