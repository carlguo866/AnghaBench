; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.h_ocfs2_update_inode_fsync_trans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.h_ocfs2_update_inode_fsync_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.inode*, i32)* @ocfs2_update_inode_fsync_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_update_inode_fsync_trans(%struct.TYPE_5__* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %8)
  store %struct.ocfs2_inode_info* %9, %struct.ocfs2_inode_info** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %16 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %3
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
