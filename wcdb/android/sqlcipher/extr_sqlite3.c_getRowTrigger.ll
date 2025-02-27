; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_getRowTrigger.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_getRowTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32)* @getRowTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @getRowTrigger(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = call %struct.TYPE_15__* @sqlite3ParseToplevel(%struct.TYPE_15__* %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %9, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = call i32* @tableOfTrigger(%struct.TYPE_14__* %19)
  %21 = icmp eq i32* %18, %20
  br label %22

22:                                               ; preds = %17, %4
  %23 = phi i1 [ true, %4 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %10, align 8
  br label %29

29:                                               ; preds = %49, %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = icmp ne %struct.TYPE_14__* %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i1 [ true, %32 ], [ %43, %38 ]
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi i1 [ false, %29 ], [ %45, %44 ]
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %10, align 8
  br label %29

53:                                               ; preds = %46
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.TYPE_13__* @codeRowTrigger(%struct.TYPE_15__* %57, %struct.TYPE_14__* %58, i32* %59, i32 %60)
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %10, align 8
  br label %62

62:                                               ; preds = %56, %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  ret %struct.TYPE_13__* %63
}

declare dso_local %struct.TYPE_15__* @sqlite3ParseToplevel(%struct.TYPE_15__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @tableOfTrigger(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @codeRowTrigger(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
