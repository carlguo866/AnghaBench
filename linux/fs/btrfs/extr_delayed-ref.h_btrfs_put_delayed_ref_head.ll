; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.h_btrfs_put_delayed_ref_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.h_btrfs_put_delayed_ref_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_ref_head = type { i32 }

@btrfs_delayed_ref_head_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_delayed_ref_head*)* @btrfs_put_delayed_ref_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_put_delayed_ref_head(%struct.btrfs_delayed_ref_head* %0) #0 {
  %2 = alloca %struct.btrfs_delayed_ref_head*, align 8
  store %struct.btrfs_delayed_ref_head* %0, %struct.btrfs_delayed_ref_head** %2, align 8
  %3 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %3, i32 0, i32 0
  %5 = call i64 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @btrfs_delayed_ref_head_cachep, align 4
  %9 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %2, align 8
  %10 = call i32 @kmem_cache_free(i32 %8, %struct.btrfs_delayed_ref_head* %9)
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_delayed_ref_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
