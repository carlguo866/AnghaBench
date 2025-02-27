; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_miscdev.c_ecryptfs_destroy_ecryptfs_miscdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_miscdev.c_ecryptfs_destroy_ecryptfs_miscdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ecryptfs_num_miscdev_opens = common dso_local global i32 0, align 4
@ecryptfs_miscdev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecryptfs_destroy_ecryptfs_miscdev() #0 {
  %1 = call i64 @atomic_read(i32* @ecryptfs_num_miscdev_opens)
  %2 = icmp ne i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @BUG_ON(i32 %3)
  %5 = call i32 @misc_deregister(i32* @ecryptfs_miscdev)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @misc_deregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
