; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_terminal.c_goodbye_screen.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_terminal.c_goodbye_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Started: %s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Stopped: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodbye_screen(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %55

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %55

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %55

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %55

42:                                               ; preds = %36
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %44 = call i32 @memset(i8* %43, i32 0, i32 32)
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i32 0, i32 32)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %49 = call i32 @ctime_r(i32* %5, i8* %48)
  %50 = call i32 @event_log_info_nn(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %53 = call i32 @ctime_r(i32* %6, i8* %52)
  %54 = call i32 @event_log_info_nn(%struct.TYPE_6__* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %42, %41, %35, %29, %23, %17
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @event_log_info_nn(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ctime_r(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
