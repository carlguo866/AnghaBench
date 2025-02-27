; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_acquire_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_acquire_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.flock = type { i32, i32, i32, i32, i32, i32 }

@F_WRLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@kvp_file_info = common dso_local global %struct.TYPE_2__* null, align 8
@F_SETLKW = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to acquire the lock pool: %d; error: %d %s\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kvp_acquire_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_acquire_lock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flock, align 4
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 0
  %5 = load i32, i32* @F_WRLCK, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 1
  %7 = load i32, i32* @SEEK_SET, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 3
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 4
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 5
  store i32 0, i32* %11, align 4
  %12 = call i32 (...) @getpid()
  %13 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @F_SETLKW, align 4
  %21 = call i32 @fcntl(i32 %19, i32 %20, %struct.flock* %3)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @syslog(i32 %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %28)
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %1
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @syslog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
