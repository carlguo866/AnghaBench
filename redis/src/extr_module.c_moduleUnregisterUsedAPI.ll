; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleUnregisterUsedAPI.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleUnregisterUsedAPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moduleUnregisterUsedAPI(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @listRewind(i32 %10, i32* %3)
  br label %12

12:                                               ; preds = %34, %1
  %13 = call %struct.TYPE_8__* @listNext(i32* %3)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = call %struct.TYPE_8__* @listSearchKey(i32 %21, %struct.TYPE_9__* %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = call i32 @listDelNode(i32 %29, %struct.TYPE_8__* %30)
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %26, %15
  br label %12

35:                                               ; preds = %12
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @listNext(i32*) #1

declare dso_local %struct.TYPE_8__* @listSearchKey(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @listDelNode(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
