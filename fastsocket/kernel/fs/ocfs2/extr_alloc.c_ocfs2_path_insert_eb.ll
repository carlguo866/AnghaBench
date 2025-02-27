; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_path_insert_eb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_path_insert_eb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_path*, i32, %struct.buffer_head*)* @ocfs2_path_insert_eb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_path_insert_eb(%struct.ocfs2_path* %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.ocfs2_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ocfs2_extent_block*, align 8
  store %struct.ocfs2_path* %0, %struct.ocfs2_path** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %11, %struct.ocfs2_extent_block** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %17 = load %struct.ocfs2_path*, %struct.ocfs2_path** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.buffer_head* %16, %struct.buffer_head** %23, align 8
  %24 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %7, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %24, i32 0, i32 0
  %26 = load %struct.ocfs2_path*, %struct.ocfs2_path** %4, align 8
  %27 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* %25, i32** %32, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
