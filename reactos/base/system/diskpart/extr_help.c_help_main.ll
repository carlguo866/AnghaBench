; ModuleID = '/home/carl/AnghaBench/reactos/base/system/diskpart/extr_help.c_help_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/diskpart/extr_help.c_help_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@cmds = common dso_local global %struct.TYPE_3__* null, align 8
@StdOut = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @help_main(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 (...) @help_cmdlist()
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmds, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  br label %14

14:                                               ; preds = %36, %12
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @_wcsicmp(i32 %22, i64 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32, i32* @StdOut, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ConResPuts(i32 %29, i32 %32)
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 1
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %6, align 8
  br label %14

39:                                               ; preds = %14
  %40 = call i32 (...) @help_cmdlist()
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %28, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @help_cmdlist(...) #1

declare dso_local i64 @_wcsicmp(i32, i64) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
