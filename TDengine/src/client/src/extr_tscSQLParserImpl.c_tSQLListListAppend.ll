; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSQLListListAppend.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSQLListListAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @tSQLListListAppend(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call %struct.TYPE_5__* @calloc(i32 1, i32 16)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %10
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 1
  %23 = add nsw i32 %22, 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i32** @realloc(i32** %28, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32** %35, i32*** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = icmp eq i32** %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %18
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %3, align 8
  br label %71

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48, %10
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = icmp ne i32** %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %49
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32*, i32** %62, i64 %67
  store i32* %59, i32** %68, align 8
  br label %69

69:                                               ; preds = %58, %49
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %3, align 8
  br label %71

71:                                               ; preds = %69, %42
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %72
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
