; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash.c_hashinsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash.c_hashinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashinsert(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca [1 x i32], align 4
  %17 = alloca [1 x i32], align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %17, i64 0, i64 0
  %24 = call i32 @_hash_convert_tuple(i32 %19, i32* %20, i32* %21, i32* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %43

27:                                               ; preds = %7
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @RelationGetDescr(i32 %28)
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %17, i64 0, i64 0
  %32 = call %struct.TYPE_5__* @index_form_tuple(i32 %29, i32* %30, i32* %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %18, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @_hash_doinsert(i32 %37, %struct.TYPE_5__* %38, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %42 = call i32 @pfree(%struct.TYPE_5__* %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %27, %26
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @_hash_convert_tuple(i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @index_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @_hash_doinsert(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
