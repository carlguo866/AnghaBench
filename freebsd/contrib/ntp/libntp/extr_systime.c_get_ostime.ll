; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_get_ostime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_get_ostime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"read system clock failed: %m (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@trunc_os_clock = common dso_local global i64 0, align 8
@sys_tick = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@TIMEOFDAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec*)* @get_ostime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ostime(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.timeval, align 4
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %6 = call i32 @GETTIMEOFDAY(%struct.timeval* %5, i32* null)
  store i32 %6, i32* %3, align 4
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.timespec*, %struct.timespec** %2, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 1000
  %14 = load %struct.timespec*, %struct.timespec** %2, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @msyslog(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %1
  %24 = load i64, i64* @trunc_os_clock, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load %struct.timespec*, %struct.timespec** %2, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sitofp i32 %29 to double
  %31 = fmul double %30, 1.000000e-09
  %32 = load i32, i32* @sys_tick, align 4
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %31, %33
  %35 = fptosi double %34 to i64
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = sitofp i64 %36 to double
  %38 = fmul double %37, 1.000000e+09
  %39 = load i32, i32* @sys_tick, align 4
  %40 = sitofp i32 %39 to double
  %41 = fmul double %38, %40
  %42 = fptosi double %41 to i64
  %43 = trunc i64 %42 to i32
  %44 = load %struct.timespec*, %struct.timespec** %2, align 8
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @GETTIMEOFDAY(%struct.timeval*, i32*) #1

declare dso_local i32 @msyslog(i32, i8*, i32) #1

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
