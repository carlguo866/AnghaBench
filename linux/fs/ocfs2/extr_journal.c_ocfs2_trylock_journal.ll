; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_trylock_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_trylock_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }

@JOURNAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"access error\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"access error (bad inode)\0A\00", align 1
@OCFS2_META_LOCK_RECOVERY = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_NOQUEUE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32)* @ocfs2_trylock_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_trylock_journal(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.inode* null, %struct.inode** %7, align 8
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = load i32, i32* @JOURNAL_SYSTEM_INODE, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %8, i32 %9, i32 %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = icmp eq %struct.inode* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @ML_ERROR, align 4
  %16 = call i32 @mlog(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call i64 @is_bad_inode(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* @ML_ERROR, align 4
  %25 = call i32 @mlog(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i32 @iput(%struct.inode* %26)
  store %struct.inode* null, %struct.inode** %7, align 8
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %53

30:                                               ; preds = %19
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call i32 @SET_INODE_JOURNAL(%struct.inode* %31)
  %33 = load i32, i32* @OCFS2_META_LOCK_RECOVERY, align 4
  %34 = load i32, i32* @OCFS2_META_LOCK_NOQUEUE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ocfs2_inode_lock_full(%struct.inode* %36, i32* null, i32 1, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %53

50:                                               ; preds = %30
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call i32 @ocfs2_inode_unlock(%struct.inode* %51, i32 1)
  br label %53

53:                                               ; preds = %50, %49, %23, %14
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call i32 @iput(%struct.inode* %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @SET_INODE_JOURNAL(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock_full(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
