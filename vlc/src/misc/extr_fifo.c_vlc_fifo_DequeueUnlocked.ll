; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_fifo.c_vlc_fifo_DequeueUnlocked.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_fifo.c_vlc_fifo_DequeueUnlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_5__**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @vlc_fifo_DequeueUnlocked(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  %7 = call i32 @vlc_mutex_assert(i32* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store %struct.TYPE_5__** %26, %struct.TYPE_5__*** %28, align 8
  br label %29

29:                                               ; preds = %24, %14
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %2, align 8
  br label %59

59:                                               ; preds = %29, %13
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %60
}

declare dso_local i32 @vlc_mutex_assert(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
