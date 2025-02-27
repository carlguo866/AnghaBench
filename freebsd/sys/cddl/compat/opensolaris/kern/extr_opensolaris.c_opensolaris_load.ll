; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris.c_opensolaris_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris.c_opensolaris_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAXCPU = common dso_local global i32 0, align 4
@solaris_cpu = common dso_local global %struct.TYPE_2__* null, align 8
@CPU_ENABLE = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"OpenSolaris CPU lock\00", align 1
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@nsec_per_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @opensolaris_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opensolaris_load(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAXCPU, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @solaris_cpu, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @CPU_ENABLE, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @solaris_cpu, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %15
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %8
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %4
  %27 = load i32, i32* @MUTEX_DEFAULT, align 4
  %28 = call i32 @mutex_init(i32* @cpu_lock, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27, i32* null)
  %29 = load i32, i32* @NANOSEC, align 4
  %30 = load i32, i32* @hz, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* @nsec_per_tick, align 4
  ret void
}

declare dso_local i32 @mutex_init(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
