; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_es_out_timeshift.c_TsStop.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_es_out_timeshift.c_TsStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @TsStop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TsStop(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @vlc_cancel(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @vlc_join(i32 %10, i32* null)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @vlc_mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %20, %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = call i64 @TsPopCmdLocked(%struct.TYPE_6__* %16, i32* %3, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %22

20:                                               ; preds = %15
  %21 = call i32 @CmdClean(i32* %3)
  br label %15

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %27, %22
  %36 = phi i1 [ true, %22 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @TsStorageDelete(%struct.TYPE_7__* %46)
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @vlc_mutex_unlock(i32* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = call i32 @TsDestroy(%struct.TYPE_6__* %52)
  ret void
}

declare dso_local i32 @vlc_cancel(i32) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @TsPopCmdLocked(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @CmdClean(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TsStorageDelete(%struct.TYPE_7__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @TsDestroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
