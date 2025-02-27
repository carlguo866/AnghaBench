; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_freed.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_freed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_scan_freed(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @BP_IS_EMBEDDED(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @dsl_scan_is_running(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %42

28:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @BP_GET_NDVAS(i32* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dsl_scan_freed_dva(%struct.TYPE_5__* %35, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %29

42:                                               ; preds = %27, %29
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i32 @dsl_scan_is_running(i32*) #1

declare dso_local i32 @BP_GET_NDVAS(i32*) #1

declare dso_local i32 @dsl_scan_freed_dva(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
