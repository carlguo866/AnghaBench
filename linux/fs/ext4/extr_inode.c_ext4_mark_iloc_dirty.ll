; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_mark_iloc_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_mark_iloc_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_mark_iloc_dirty(i32* %0, %struct.inode* %1, %struct.ext4_iloc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_iloc*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_iloc* %2, %struct.ext4_iloc** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @EXT4_SB(i32 %11)
  %13 = call i32 @ext4_forced_shutdown(i32 %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %18 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @put_bh(i32 %19)
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %44

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i64 @IS_I_VERSION(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 @inode_inc_iversion(%struct.inode* %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %32 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @get_bh(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %38 = call i32 @ext4_do_update_inode(i32* %35, %struct.inode* %36, %struct.ext4_iloc* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %40 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @put_bh(i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %30, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @put_bh(i32) #1

declare dso_local i64 @IS_I_VERSION(%struct.inode*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @get_bh(i32) #1

declare dso_local i32 @ext4_do_update_inode(i32*, %struct.inode*, %struct.ext4_iloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
