; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@TS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cx_stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i32)* @cx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx_stop(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tty*, %struct.tty** %3, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = call i32 (...) @splhigh()
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @CX_LOCK(i32* %17)
  %19 = load %struct.tty*, %struct.tty** %3, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TS_BUSY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = call i32 @CX_DEBUG2(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cx_transmitter_ctl(i32 %30, i32 0)
  br label %32

32:                                               ; preds = %25, %2
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @CX_UNLOCK(i32* %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @splx(i32 %35)
  ret void
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @CX_LOCK(i32*) #1

declare dso_local i32 @CX_DEBUG2(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @cx_transmitter_ctl(i32, i32) #1

declare dso_local i32 @CX_UNLOCK(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
