; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_inode_refresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_inode_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i32 }

@GIF_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_inode_refresh(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %6 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %7 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %6, %struct.buffer_head** %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gfs2_dinode_in(%struct.gfs2_inode* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %19 = call i32 @brelse(%struct.buffer_head* %18)
  %20 = load i32, i32* @GIF_INVALID, align 4
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %22 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %21, i32 0, i32 0
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_dinode_in(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
