; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_locale_list.c_LocaleList_Append.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_locale_list.c_LocaleList_Append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32* }

@_LocaleList = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i32*)* @LocaleList_Append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @LocaleList_Append(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %59

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_LocaleList, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = call i64 @malloc(i32 32)
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %59

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = call i32 @ZeroMemory(%struct.TYPE_6__* %19, i32 32)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @_wcsdup(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = call i32 @free(%struct.TYPE_6__* %30)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %59

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = icmp eq %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** @_LocaleList, align 8
  br label %57

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %46, %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %6, align 8
  br label %41

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %56, align 8
  br label %57

57:                                               ; preds = %50, %38
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %3, align 8
  br label %59

59:                                               ; preds = %57, %29, %17, %10
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %60
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @_wcsdup(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
