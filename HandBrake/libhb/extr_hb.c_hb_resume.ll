; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_resume.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_resume(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = call i32 (...) @hb_get_date()
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %13, %16
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = call i32 (...) @hb_get_date()
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 8
  br label %43

43:                                               ; preds = %12, %7
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @hb_unlock(i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @hb_get_date(...) #1

declare dso_local i32 @hb_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
