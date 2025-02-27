; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.fuse_inode = type { %struct.inode, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@fuse_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @fuse_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @fuse_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.fuse_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @fuse_inode_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.fuse_inode* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.fuse_inode* %7, %struct.fuse_inode** %4, align 8
  %8 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %9 = icmp ne %struct.fuse_inode* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %13 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %12, i32 0, i32 10
  store i64 0, i64* %13, align 8
  %14 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %15 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %17 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %19 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %21 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %23 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %25 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %27 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %26, i32 0, i32 3
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %30 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %29, i32 0, i32 2
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = call i32 (...) @fuse_alloc_forget()
  %33 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %34 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %36 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %11
  %40 = load i32, i32* @fuse_inode_cachep, align 4
  %41 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %42 = call i32 @kmem_cache_free(i32 %40, %struct.fuse_inode* %41)
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %46

43:                                               ; preds = %11
  %44 = load %struct.fuse_inode*, %struct.fuse_inode** %4, align 8
  %45 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %44, i32 0, i32 0
  store %struct.inode* %45, %struct.inode** %2, align 8
  br label %46

46:                                               ; preds = %43, %39, %10
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %47
}

declare dso_local %struct.fuse_inode* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @fuse_alloc_forget(...) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fuse_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
