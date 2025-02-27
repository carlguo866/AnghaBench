; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_may_umount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_may_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }

@namespace_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @may_umount(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = call i32 @down_read(i32* @namespace_sem)
  %5 = call i32 (...) @lock_mount_hash()
  %6 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %7 = call i32 @real_mount(%struct.vfsmount* %6)
  %8 = call i64 @propagate_mount_busy(i32 %7, i32 2)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = call i32 (...) @unlock_mount_hash()
  %13 = call i32 @up_read(i32* @namespace_sem)
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local i64 @propagate_mount_busy(i32, i32) #1

declare dso_local i32 @real_mount(%struct.vfsmount*) #1

declare dso_local i32 @unlock_mount_hash(...) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
