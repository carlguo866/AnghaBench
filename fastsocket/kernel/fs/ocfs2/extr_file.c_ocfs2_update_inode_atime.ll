; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_update_inode_atime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_update_inode_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32, %struct.TYPE_2__ }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_update_inode_atime(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ocfs2_super* @OCFS2_SB(i32 %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %6, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %16, %struct.ocfs2_dinode** %8, align 8
  %17 = call i32 (...) @mlog_entry_void()
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %19 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %20 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %18, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @PTR_ERR(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %75

29:                                               ; preds = %2
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i32 @INODE_CACHE(%struct.inode* %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %34 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %35 = call i32 @ocfs2_journal_access_di(i32* %30, i32 %32, %struct.buffer_head* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %68

41:                                               ; preds = %29
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = bitcast %struct.TYPE_2__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 bitcast (%struct.TYPE_2__* @CURRENT_TIME to i8*), i64 8, i1 false)
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_le64(i32 %48)
  %50 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %58 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %61 = call i32 @ocfs2_journal_dirty(i32* %59, %struct.buffer_head* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %41
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %67

67:                                               ; preds = %64, %41
  br label %68

68:                                               ; preds = %67, %38
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.ocfs2_super* @OCFS2_SB(i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %72, i32* %73)
  br label %75

75:                                               ; preds = %68, %24
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @mlog_exit(i32 %76)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
