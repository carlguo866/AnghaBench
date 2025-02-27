; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_test_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_test_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"kevent(EVFILT_TIMER (UPDATE), EV_ADD | EV_ONESHOT)\00", align 1
@vnode_fd = common dso_local global i32 0, align 4
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_USECONDS = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EV_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"timer expired after %ld us\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"early timer expiration: %ld us\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"late timer expiration: %ld us\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_update() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @test_begin(i8* %5)
  %7 = call i32 (...) @test_no_kevents()
  %8 = load i32, i32* @vnode_fd, align 4
  %9 = load i32, i32* @EVFILT_TIMER, align 4
  %10 = load i32, i32* @EV_ADD, align 4
  %11 = load i32, i32* @EV_ONESHOT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @NOTE_USECONDS, align 4
  %14 = call i64 @SEC_TO_US(i32 1)
  %15 = call i32 @EV_SET(%struct.kevent* %2, i32 %8, i32 %9, i32 %12, i32 %13, i64 %14, i8* inttoptr (i64 1 to i8*))
  %16 = call i64 (...) @now()
  store i64 %16, i64* %4, align 8
  %17 = load i32, i32* @kqfd, align 4
  %18 = call i64 @kevent(i32 %17, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %0
  %24 = load i32, i32* @vnode_fd, align 4
  %25 = load i32, i32* @EVFILT_TIMER, align 4
  %26 = load i32, i32* @EV_ADD, align 4
  %27 = load i32, i32* @EV_ONESHOT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @NOTE_USECONDS, align 4
  %30 = call i64 @MS_TO_US(i32 1)
  %31 = call i32 @EV_SET(%struct.kevent* %2, i32 %24, i32 %25, i32 %28, i32 %29, i64 %30, i8* inttoptr (i64 2 to i8*))
  %32 = load i32, i32* @kqfd, align 4
  %33 = call i64 @kevent(i32 %32, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i8*, i8** %1, align 8
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %23
  %39 = load i32, i32* @EV_CLEAR, align 4
  %40 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @NOTE_USECONDS, align 4
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @kqfd, align 4
  %50 = call i32 @kevent_get(i32 %49)
  %51 = call i32 @kevent_cmp(%struct.kevent* %2, i32 %50)
  %52 = call i64 (...) @now()
  %53 = load i64, i64* %4, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* %3, align 8
  %58 = call i64 @MS_TO_US(i32 1)
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %60, %38
  %64 = load i64, i64* %3, align 8
  %65 = call i64 @SEC_TO_US(i32 1)
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @test_no_kevents(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i64, i8*) #1

declare dso_local i64 @SEC_TO_US(i32) #1

declare dso_local i64 @now(...) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @MS_TO_US(i32) #1

declare dso_local i32 @kevent_cmp(%struct.kevent*, i32) #1

declare dso_local i32 @kevent_get(i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
