; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_CreateQueryDesc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_pquery.c_CreateQueryDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i8*, i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @CreateQueryDesc(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = call i64 @palloc(i32 104)
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %17, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 13
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 12
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i8* @RegisterSnapshot(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 11
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i8* @RegisterSnapshot(i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 10
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 9
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 7
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 6
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 5
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  ret %struct.TYPE_5__* %61
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @RegisterSnapshot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
