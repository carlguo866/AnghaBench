; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_listxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.gfs2_inode = type { i64, i32 }
%struct.gfs2_ea_request = type { i8*, i64 }
%struct.gfs2_holder = type { i32 }
%struct.ea_list = type { i32, %struct.gfs2_ea_request* }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@ea_list_i = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_ea_request, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ea_list, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.gfs2_inode* @GFS2_I(i32 %15)
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %8, align 8
  %17 = call i32 @memset(%struct.gfs2_ea_request* %9, i32 0, i32 16)
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %9, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %9, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %27 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LM_ST_SHARED, align 4
  %30 = load i32, i32* @LM_FLAG_ANY, align 4
  %31 = call i32 @gfs2_glock_nq_init(i32 %28, i32 %29, i32 %30, %struct.gfs2_holder* %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %56

36:                                               ; preds = %25
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %12, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %12, i32 0, i32 1
  store %struct.gfs2_ea_request* %9, %struct.gfs2_ea_request** %43, align 8
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %45 = load i32, i32* @ea_list_i, align 4
  %46 = call i32 @ea_foreach(%struct.gfs2_inode* %44, i32 %45, %struct.ea_list* %12)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %36
  %54 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %34
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @memset(%struct.gfs2_ea_request*, i32, i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @ea_foreach(%struct.gfs2_inode*, i32, %struct.ea_list*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
