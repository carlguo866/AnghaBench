; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_inode.c_omfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_inode.c_omfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.omfs_sb_info = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c",umask=%o\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c",dmask=%o\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c",fmask=%o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @omfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.omfs_sb_info*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.omfs_sb_info* @OMFS_SB(i32 %9)
  store %struct.omfs_sb_info* %10, %struct.omfs_sb_info** %5, align 8
  %11 = call i64 (...) @current_umask()
  store i64 %11, i64* %6, align 8
  %12 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (...) @current_uid()
  %16 = call i32 @uid_eq(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %21 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @from_kuid_munged(i32* @init_user_ns, i32 %22)
  %24 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %27 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (...) @current_gid()
  %30 = call i32 @gid_eq(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %35 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @from_kgid_munged(i32* @init_user_ns, i32 %36)
  %38 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %41 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %39
  %48 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %56 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %53, %47
  br label %85

60:                                               ; preds = %39
  %61 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %62 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %69 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %74 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %81 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %78, %72
  br label %85

85:                                               ; preds = %84, %59
  ret i32 0
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(i32) #1

declare dso_local i64 @current_umask(...) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @current_gid(...) #1

declare dso_local i64 @from_kgid_munged(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
