; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kq_find_knote_and_kq_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kq_find_knote_and_kq_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32 }
%struct.kqueue = type { i32 }
%struct.kevent_internal_s = type { i32 }
%struct.proc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.knote* (%struct.kqueue*, %struct.kevent_internal_s*, i32, %struct.proc*)* @kq_find_knote_and_kq_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.knote* @kq_find_knote_and_kq_lock(%struct.kqueue* %0, %struct.kevent_internal_s* %1, i32 %2, %struct.proc* %3) #0 {
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca %struct.kevent_internal_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.knote*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %5, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.proc* %3, %struct.proc** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.proc*, %struct.proc** %8, align 8
  %14 = call i32 @proc_fdlock(%struct.proc* %13)
  br label %18

15:                                               ; preds = %4
  %16 = load %struct.proc*, %struct.proc** %8, align 8
  %17 = call i32 @knhash_lock(%struct.proc* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %20 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.proc*, %struct.proc** %8, align 8
  %23 = call %struct.knote* @knote_fdfind(%struct.kqueue* %19, %struct.kevent_internal_s* %20, i32 %21, %struct.proc* %22)
  store %struct.knote* %23, %struct.knote** %9, align 8
  %24 = load %struct.knote*, %struct.knote** %9, align 8
  %25 = icmp ne %struct.knote* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %28 = call i32 @kqlock(%struct.kqueue* %27)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.proc*, %struct.proc** %8, align 8
  %34 = call i32 @proc_fdunlock(%struct.proc* %33)
  br label %38

35:                                               ; preds = %29
  %36 = load %struct.proc*, %struct.proc** %8, align 8
  %37 = call i32 @knhash_unlock(%struct.proc* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.knote*, %struct.knote** %9, align 8
  ret %struct.knote* %39
}

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @knhash_lock(%struct.proc*) #1

declare dso_local %struct.knote* @knote_fdfind(%struct.kqueue*, %struct.kevent_internal_s*, i32, %struct.proc*) #1

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @knhash_unlock(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
