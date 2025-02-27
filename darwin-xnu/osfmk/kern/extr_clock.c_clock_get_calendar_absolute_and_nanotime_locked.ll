; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_clock_get_calendar_absolute_and_nanotime_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_clock_get_calendar_absolute_and_nanotime_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bintime = type { i32 }

@clock_calend = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @clock_get_calendar_absolute_and_nanotime_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_get_calendar_absolute_and_nanotime_locked(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bintime, align 4
  %9 = alloca %struct.bintime, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = call i32 (...) @mach_absolute_time()
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @get_scaled_time(i32 %17)
  %19 = getelementptr inbounds %struct.bintime, %struct.bintime* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.bintime* %8 to i8*
  %21 = bitcast %struct.bintime* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = call i32 @bintime_add(%struct.bintime* %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clock_calend, i32 0, i32 0))
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @bintime2nsclock(%struct.bintime* %8, i32* %23, i32* %24)
  ret void
}

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @get_scaled_time(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bintime_add(%struct.bintime*, i32*) #1

declare dso_local i32 @bintime2nsclock(%struct.bintime*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
