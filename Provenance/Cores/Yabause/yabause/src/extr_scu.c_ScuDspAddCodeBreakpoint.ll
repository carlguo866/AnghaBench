; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuDspAddCodeBreakpoint.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuDspAddCodeBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ScuBP = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_BREAKPOINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScuDspAddCodeBreakpoint(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuBP, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %30, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuBP, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuBP, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %18, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %49

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuBP, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuBP, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 %34, i64* %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuBP, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %33, %28
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
