; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnlru_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnlru_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsops = type { i32 }

@vnode_free_list_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnlru_free(i32 %0, %struct.vfsops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsops*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.vfsops* %1, %struct.vfsops** %4, align 8
  %5 = call i32 @mtx_lock(i32* @vnode_free_list_mtx)
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.vfsops*, %struct.vfsops** %4, align 8
  %8 = call i32 @vnlru_free_locked(i32 %6, %struct.vfsops* %7)
  %9 = call i32 @mtx_unlock(i32* @vnode_free_list_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vnlru_free_locked(i32, %struct.vfsops*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
