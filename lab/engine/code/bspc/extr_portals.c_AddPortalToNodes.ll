; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_AddPortalToNodes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_AddPortalToNodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__**, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [35 x i8] c"AddPortalToNode: allready included\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddPortalToNodes(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %9, i64 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %16, i64 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13, %3
  %21 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %13
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 0
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 0
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %41, i64 1
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 1
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %52, align 8
  ret void
}

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
