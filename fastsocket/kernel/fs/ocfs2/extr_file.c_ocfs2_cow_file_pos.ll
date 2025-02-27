; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_cow_file_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_cow_file_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32)* @ocfs2_cow_file_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cow_file_pos(%struct.inode* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* @OCFS2_SB(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %13, %19
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_2__* @OCFS2_SB(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %21, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

32:                                               ; preds = %3
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ocfs2_get_clusters(%struct.inode* %33, i32 %34, i32* %9, i32* %11, i32* %12)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %54

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %54

47:                                               ; preds = %41
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @ocfs2_refcount_cow(%struct.inode* %48, %struct.buffer_head* %49, i32 %50, i32 1, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %46, %38
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %47, %31
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_2__* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_refcount_cow(%struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
