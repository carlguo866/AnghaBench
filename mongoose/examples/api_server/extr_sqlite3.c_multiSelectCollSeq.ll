; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_multiSelectCollSeq.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_multiSelectCollSeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*, i32)* @multiSelectCollSeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @multiSelectCollSeq(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @multiSelectCollSeq(i32* %13, %struct.TYPE_7__* %16, i32 %17)
  store i32* %18, i32** %7, align 8
  br label %20

19:                                               ; preds = %3
  store i32* null, i32** %7, align 8
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @sqlite3ExprCollSeq(i32* %36, i32 %46)
  store i32* %47, i32** %7, align 8
  br label %48

48:                                               ; preds = %35, %27, %20
  %49 = load i32*, i32** %7, align 8
  ret i32* %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3ExprCollSeq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
