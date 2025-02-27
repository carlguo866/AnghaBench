; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.h_v9fs_get_new_inode_from_fid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.h_v9fs_get_new_inode_from_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.v9fs_session_info*, %struct.p9_fid*, %struct.super_block*)* @v9fs_get_new_inode_from_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info* %0, %struct.p9_fid* %1, %struct.super_block* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.v9fs_session_info*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca %struct.super_block*, align 8
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %5, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %6, align 8
  store %struct.super_block* %2, %struct.super_block** %7, align 8
  %8 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %9 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %13 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = call %struct.inode* @v9fs_inode_from_fid_dotl(%struct.v9fs_session_info* %12, %struct.p9_fid* %13, %struct.super_block* %14, i32 1)
  store %struct.inode* %15, %struct.inode** %4, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %18 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.inode* @v9fs_inode_from_fid(%struct.v9fs_session_info* %17, %struct.p9_fid* %18, %struct.super_block* %19, i32 1)
  store %struct.inode* %20, %struct.inode** %4, align 8
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %22
}

declare dso_local i64 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local %struct.inode* @v9fs_inode_from_fid_dotl(%struct.v9fs_session_info*, %struct.p9_fid*, %struct.super_block*, i32) #1

declare dso_local %struct.inode* @v9fs_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, %struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
