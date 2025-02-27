; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_mmap_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_kcov_mmap_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcov_info = type { %struct.thread*, i32 }
%struct.thread = type { i32 }

@kcov_lock = common dso_local global i32 0, align 4
@KCOV_STATE_DYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kcov_mmap_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcov_mmap_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kcov_info*, align 8
  %4 = alloca %struct.thread*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.kcov_info*
  store %struct.kcov_info* %6, %struct.kcov_info** %3, align 8
  %7 = call i32 @mtx_lock_spin(i32* @kcov_lock)
  %8 = load %struct.kcov_info*, %struct.kcov_info** %3, align 8
  %9 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %8, i32 0, i32 1
  %10 = load i32, i32* @KCOV_STATE_DYING, align 4
  %11 = call i32 @atomic_store_int(i32* %9, i32 %10)
  %12 = call i32 (...) @atomic_thread_fence_seq_cst()
  %13 = load %struct.kcov_info*, %struct.kcov_info** %3, align 8
  %14 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %13, i32 0, i32 0
  %15 = load %struct.thread*, %struct.thread** %14, align 8
  store %struct.thread* %15, %struct.thread** %4, align 8
  %16 = call i32 @mtx_unlock_spin(i32* @kcov_lock)
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = icmp ne %struct.thread* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.kcov_info*, %struct.kcov_info** %3, align 8
  %22 = call i32 @kcov_free(%struct.kcov_info* %21)
  br label %23

23:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @atomic_store_int(i32*, i32) #1

declare dso_local i32 @atomic_thread_fence_seq_cst(...) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @kcov_free(%struct.kcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
