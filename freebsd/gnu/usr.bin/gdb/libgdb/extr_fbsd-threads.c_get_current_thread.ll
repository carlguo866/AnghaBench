; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_get_current_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_get_current_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@proc_handle = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_current_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_current_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proc_handle, i32 0, i32 0), align 4
  %7 = call i64 @get_current_lwp(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proc_handle, i32 0, i32 0), align 4
  %10 = call i32 @BUILD_LWP(i64 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @thread_from_lwp(i32 %11, i32* %1, i32* %2)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @in_thread_list(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @attach_thread(i32 %17, i32* %1, i32* %2, i32 1)
  br label %19

19:                                               ; preds = %16, %0
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* @inferior_ptid, align 4
  ret void
}

declare dso_local i64 @get_current_lwp(i32) #1

declare dso_local i32 @BUILD_LWP(i64, i32) #1

declare dso_local i32 @thread_from_lwp(i32, i32*, i32*) #1

declare dso_local i32 @in_thread_list(i32) #1

declare dso_local i32 @attach_thread(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
