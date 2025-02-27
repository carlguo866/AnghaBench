; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_do_vfs_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_do_vfs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*)* @do_vfs_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_vfs_lock(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  %3 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %5 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 129
  switch i32 %7, label %20 [
    i32 128, label %8
    i32 129, label %14
  ]

8:                                                ; preds = %1
  %9 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %10 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %13 = call i32 @posix_lock_file_wait(i32 %11, %struct.file_lock* %12)
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %19 = call i32 @flock_lock_file_wait(i32 %17, %struct.file_lock* %18)
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %1
  %21 = call i32 (...) @BUG()
  br label %22

22:                                               ; preds = %20, %14, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @posix_lock_file_wait(i32, %struct.file_lock*) #1

declare dso_local i32 @flock_lock_file_wait(i32, %struct.file_lock*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
