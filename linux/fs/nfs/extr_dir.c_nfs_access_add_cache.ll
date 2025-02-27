; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_add_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_add_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_access_entry = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfs_access_nr_entries = common dso_local global i32 0, align 4
@NFS_INO_ACL_LRU_SET = common dso_local global i32 0, align 4
@nfs_access_lru_lock = common dso_local global i32 0, align 4
@nfs_access_lru_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_access_add_cache(%struct.inode* %0, %struct.nfs_access_entry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_access_entry*, align 8
  %5 = alloca %struct.nfs_access_entry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_access_entry* %1, %struct.nfs_access_entry** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nfs_access_entry* @kmalloc(i32 12, i32 %6)
  store %struct.nfs_access_entry* %7, %struct.nfs_access_entry** %5, align 8
  %8 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %9 = icmp eq %struct.nfs_access_entry* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %12, i32 0, i32 2
  %14 = call i32 @RB_CLEAR_NODE(i32* %13)
  %15 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @get_cred(i32 %17)
  %19 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = call i32 (...) @smp_wmb()
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %29 = call i32 @nfs_access_add_rbtree(%struct.inode* %27, %struct.nfs_access_entry* %28)
  %30 = call i32 (...) @smp_mb__before_atomic()
  %31 = call i32 @atomic_long_inc(i32* @nfs_access_nr_entries)
  %32 = call i32 (...) @smp_mb__after_atomic()
  %33 = load i32, i32* @NFS_INO_ACL_LRU_SET, align 4
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @test_bit(i32 %33, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %11
  %40 = call i32 @spin_lock(i32* @nfs_access_lru_lock)
  %41 = load i32, i32* @NFS_INO_ACL_LRU_SET, align 4
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @test_and_set_bit(i32 %41, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(i32* %50, i32* @nfs_access_lru_list)
  br label %52

52:                                               ; preds = %47, %39
  %53 = call i32 @spin_unlock(i32* @nfs_access_lru_lock)
  br label %54

54:                                               ; preds = %52, %11
  %55 = call i32 (...) @nfs_access_cache_enforce_limit()
  br label %56

56:                                               ; preds = %54, %10
  ret void
}

declare dso_local %struct.nfs_access_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @nfs_access_add_rbtree(%struct.inode*, %struct.nfs_access_entry*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_access_cache_enforce_limit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
