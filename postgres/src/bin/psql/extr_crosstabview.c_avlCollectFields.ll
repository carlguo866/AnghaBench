; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_avlCollectFields.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_avlCollectFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32)* @avlCollectFields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avlCollectFields(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp eq %struct.TYPE_6__* %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %5, align 4
  br label %44

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @avlCollectFields(%struct.TYPE_5__* %18, %struct.TYPE_6__* %23, i32* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @avlCollectFields(%struct.TYPE_5__* %34, %struct.TYPE_6__* %39, i32* %40, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %17, %15
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
