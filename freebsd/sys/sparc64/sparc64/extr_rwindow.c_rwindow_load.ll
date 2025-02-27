; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_rwindow.c_rwindow_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_rwindow.c_rwindow_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.trapframe = type { i32* }
%struct.rwindow = type { i32* }

@KTR_TRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"rwindow_load: td=%p (%s) n=%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"rwindow_load: usp=%#lx\00", align 1
@SPOFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"rwindow_load: error=%d\00", align 1
@SIGILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwindow_load(%struct.thread* %0, %struct.trapframe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rwindow, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.trapframe* %1, %struct.trapframe** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @KTR_TRAP, align 4
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @CTR3(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.thread* %13, i32 %18, i32 %19)
  %21 = load %struct.thread*, %struct.thread** %5, align 8
  %22 = call i32 @rwindow_save(%struct.thread* %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %3
  %27 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %28 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %58, %26
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load i32, i32* @KTR_TRAP, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @CTR1(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* @SPOFF, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 7
  store i32 %46, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %61

49:                                               ; preds = %36
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @copyin(i8* %52, %struct.rwindow* %8, i32 8)
  store i32 %53, i32* %10, align 4
  %54 = getelementptr inbounds %struct.rwindow, %struct.rwindow* %8, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %32

61:                                               ; preds = %48, %32
  %62 = load i32, i32* @KTR_TRAP, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @CTR1(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @SIGILL, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ 0, %67 ], [ %69, %68 ]
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @CTR3(i32, i8*, %struct.thread*, i32, i32) #1

declare dso_local i32 @rwindow_save(%struct.thread*) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i32 @copyin(i8*, %struct.rwindow*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
