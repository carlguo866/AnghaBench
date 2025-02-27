; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_test_update_timing.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_test_update_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"kevent(EVFILT_TIMER (UPDATE TIMING), EV_ADD | EV_ONESHOT)\00", align 1
@vnode_fd = common dso_local global i32 0, align 4
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_USECONDS = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EV_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"early timer expiration: %ld us\00", align 1
@MAX_SLEEP = common dso_local global i32 0, align 4
@MIN_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_update_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_update_timing() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @test_begin(i8* %8)
  %10 = call i32 (...) @test_no_kevents()
  store i32 500, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %66, %0
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 1500
  br i1 %13, label %14, label %71

14:                                               ; preds = %11
  %15 = load i32, i32* @vnode_fd, align 4
  %16 = load i32, i32* @EVFILT_TIMER, align 4
  %17 = load i32, i32* @EV_ADD, align 4
  %18 = load i32, i32* @EV_ONESHOT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NOTE_USECONDS, align 4
  %21 = call i64 @MS_TO_US(i32 1)
  %22 = call i32 @EV_SET(%struct.kevent* %2, i32 %15, i32 %16, i32 %19, i32 %20, i64 %21, i32* null)
  %23 = load i32, i32* @kqfd, align 4
  %24 = call i64 @kevent(i32 %23, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ussleep(i32 %30)
  %32 = call i64 (...) @now()
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* @kqfd, align 4
  %34 = call i64 @kevent(i32 %33, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* @EV_CLEAR, align 4
  %41 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @NOTE_USECONDS, align 4
  %45 = xor i32 %44, -1
  %46 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* @kqfd, align 4
  %51 = call i32 @kevent_get(i32 %50)
  %52 = call i32 @kevent_cmp(%struct.kevent* %2, i32 %51)
  %53 = call i64 (...) @now()
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @MS_TO_US(i32 1)
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %39
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %60, %39
  %64 = call i32 @mssleep(i32 2)
  %65 = call i32 (...) @test_no_kevents_quietly()
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %11

71:                                               ; preds = %11
  %72 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @test_no_kevents(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i64 @MS_TO_US(i32) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @ussleep(i32) #1

declare dso_local i64 @now(...) #1

declare dso_local i32 @kevent_cmp(%struct.kevent*, i32) #1

declare dso_local i32 @kevent_get(i32) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @mssleep(i32) #1

declare dso_local i32 @test_no_kevents_quietly(...) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
