; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_type_new_array.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typetree.c_type_new_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i8, %struct.TYPE_9__*, i32*, i32* }

@TYPE_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @type_new_array(i8* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32* %4, i32* %5, i8 zeroext %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8, align 1
  %15 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8 %6, i8* %14, align 1
  %16 = load i32, i32* @TYPE_ARRAY, align 4
  %17 = call %struct.TYPE_9__* @make_type(i32 %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %15, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @xstrdup(i8* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %20, %7
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  store i32* %31, i32** %35, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load i32*, i32** %12, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  store i32* %39, i32** %43, align 8
  br label %50

44:                                               ; preds = %25
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %55, align 8
  %56 = load i8, i8* %14, align 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i8 %56, i8* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  ret %struct.TYPE_9__* %61
}

declare dso_local %struct.TYPE_9__* @make_type(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
