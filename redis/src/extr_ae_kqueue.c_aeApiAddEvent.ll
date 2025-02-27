; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ae_kqueue.c_aeApiAddEvent.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ae_kqueue.c_aeApiAddEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kevent = type { i32 }

@AE_READABLE = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@AE_WRITABLE = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @aeApiAddEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aeApiAddEvent(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.kevent, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AE_READABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @EVFILT_READ, align 4
  %20 = load i32, i32* @EV_ADD, align 4
  %21 = call i32 @EV_SET(%struct.kevent* %9, i32 %18, i32 %19, i32 %20, i32 0, i32 0, i32* null)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kevent(i32 %24, %struct.kevent* %9, i32 1, i32* null, i32 0, i32* null)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %47

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AE_WRITABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EVFILT_WRITE, align 4
  %37 = load i32, i32* @EV_ADD, align 4
  %38 = call i32 @EV_SET(%struct.kevent* %9, i32 %35, i32 %36, i32 %37, i32 0, i32 0, i32* null)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kevent(i32 %41, %struct.kevent* %9, i32 1, i32* null, i32 0, i32* null)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %47

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %29
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %44, %27
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
