; ModuleID = '/home/carl/AnghaBench/lab/examples/extr_game_main.c_print_events.c'
source_filename = "/home/carl/AnghaBench/lab/examples/extr_game_main.c_print_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*)*, i8* (i8*, i32)*, i32 (i8*, i32, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Event %d: \22%s\22 - \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @print_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_events(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 %11(i8* %12)
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %58, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32 (i8*, i32, %struct.TYPE_5__*)*, i32 (i8*, i32, %struct.TYPE_5__*)** %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %21(i8* %22, i32 %23, %struct.TYPE_5__* %7)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8* (i8*, i32)*, i8* (i8*, i32)** %27, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i8* %28(i8* %29, i32 %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %52, %18
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @print_observation(i32* %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load i32, i32* @stdout, align 4
  %57 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %14

61:                                               ; preds = %14
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @print_observation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
