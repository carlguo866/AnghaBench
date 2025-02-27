; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blcost.c_blcostestimate.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blcost.c_blcostestimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { double, double, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blcostestimate(i32* %0, %struct.TYPE_8__* %1, double %2, i32* %3, i32* %4, i32* %5, double* %6, double* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store double %2, double* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store double* %6, double** %15, align 8
  store double* %7, double** %16, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %17, align 8
  %22 = call i32 @MemSet(%struct.TYPE_10__* %18, i32 0, i32 32)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = load double, double* %11, align 8
  %30 = call i32 @genericcostestimate(i32* %27, %struct.TYPE_8__* %28, double %29, %struct.TYPE_10__* %18)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %12, align 8
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %14, align 8
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %15, align 8
  store double %41, double* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %16, align 8
  store double %44, double* %45, align 8
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @genericcostestimate(i32*, %struct.TYPE_8__*, double, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
