; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.cifsInodeInfo = type { i32, i32, i32, %struct.inode, i32, i64, i64 }

@cifs_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @cifs_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @cifs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.cifsInodeInfo*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @cifs_inode_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.cifsInodeInfo* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.cifsInodeInfo* %7, %struct.cifsInodeInfo** %4, align 8
  %8 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %9 = icmp ne %struct.cifsInodeInfo* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %13 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %12, i32 0, i32 0
  store i32 32, i32* %13, align 8
  %14 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %15 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %17 = call i32 @cifs_set_oplock_level(%struct.cifsInodeInfo* %16, i32 0)
  %18 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %19 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %21 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %20, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %23 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  store i32 14, i32* %24, align 4
  %25 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %26 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %28 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %27, i32 0, i32 4
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %31 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %30, i32 0, i32 3
  store %struct.inode* %31, %struct.inode** %2, align 8
  br label %32

32:                                               ; preds = %11, %10
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %33
}

declare dso_local %struct.cifsInodeInfo* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @cifs_set_oplock_level(%struct.cifsInodeInfo*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
