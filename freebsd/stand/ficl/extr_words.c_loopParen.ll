; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_loopParen.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_loopParen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @loopParen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loopParen(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @stackGetTop(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @stackFetch(i32 %16, i32 1)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @stackDrop(i32 %29, i32 3)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = call i32 @vmBranchRelative(%struct.TYPE_6__* %31, i64 1)
  br label %46

33:                                               ; preds = %1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @LVALUEtoCELL(i64 %37)
  %39 = call i32 @stackSetTop(i32 %36, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @vmBranchRelative(%struct.TYPE_6__* %40, i64 %44)
  br label %46

46:                                               ; preds = %33, %26
  ret void
}

declare dso_local i64 @stackGetTop(i32) #1

declare dso_local i64 @stackFetch(i32, i32) #1

declare dso_local i32 @stackDrop(i32, i32) #1

declare dso_local i32 @vmBranchRelative(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @stackSetTop(i32, i32) #1

declare dso_local i32 @LVALUEtoCELL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
