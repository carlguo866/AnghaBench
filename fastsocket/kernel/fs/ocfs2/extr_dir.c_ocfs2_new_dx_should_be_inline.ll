; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_new_dx_should_be_inline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_new_dx_should_be_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_entry = type { i32, i64, i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_new_dx_should_be_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_new_dx_should_be_inline(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ocfs2_dir_entry*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %13, %struct.ocfs2_dinode** %9, align 8
  %14 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %15 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call i32 @i_size_read(%struct.inode* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %43, %2
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %30, %struct.ocfs2_dir_entry** %8, align 8
  %31 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %8, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %8, align 8
  %37 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %35, %28
  %44 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %8, align 8
  %45 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %6, align 8
  br label %24

51:                                               ; preds = %24
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ocfs2_dx_entries_per_root(i32 %55)
  %57 = icmp slt i32 %52, %56
  %58 = zext i1 %57 to i32
  ret i32 %58
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_dx_entries_per_root(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
