; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_list.c_xmlListHigherSearch.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_list.c_xmlListHigherSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i64 (i32, i8*)*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_5__*, i8*)* @xmlListHigherSearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @xmlListHigherSearch(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %6, align 8
  br label %16

16:                                               ; preds = %35, %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64 (i32, i8*)*, i64 (i32, i8*)** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 %25(i32 %28, i8* %29)
  %31 = icmp sgt i64 %30, 0
  br label %32

32:                                               ; preds = %22, %16
  %33 = phi i1 [ false, %16 ], [ %31, %22 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %6, align 8
  br label %16

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %3, align 8
  br label %41

41:                                               ; preds = %39, %9
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
