; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_RealTime.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_RealTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_RealTime(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = call i32 @time(i32* null)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %63

11:                                               ; preds = %1
  %12 = call %struct.tm* @localtime(i32* %4)
  store %struct.tm* %12, %struct.tm** %5, align 8
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = icmp ne %struct.tm* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.tm*, %struct.tm** %5, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tm*, %struct.tm** %5, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tm*, %struct.tm** %5, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tm*, %struct.tm** %5, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tm*, %struct.tm** %5, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tm*, %struct.tm** %5, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.tm*, %struct.tm** %5, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.tm*, %struct.tm** %5, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %15, %11
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
