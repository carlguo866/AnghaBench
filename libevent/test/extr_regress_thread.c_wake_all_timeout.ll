; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_thread.c_wake_all_timeout.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_thread.c_wake_all_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cond_wait = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @wake_all_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wake_all_timeout(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cond_wait*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.cond_wait*
  store %struct.cond_wait* %9, %struct.cond_wait** %7, align 8
  %10 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %11 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @EVLOCK_LOCK(i32 %12, i32 0)
  %14 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %15 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @EVTHREAD_COND_BROADCAST(i32 %16)
  %18 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %19 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @EVLOCK_UNLOCK(i32 %20, i32 0)
  ret void
}

declare dso_local i32 @EVLOCK_LOCK(i32, i32) #1

declare dso_local i32 @EVTHREAD_COND_BROADCAST(i32) #1

declare dso_local i32 @EVLOCK_UNLOCK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
