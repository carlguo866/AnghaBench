; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_thread.c_thread__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_thread.c_thread__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c":%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread* @thread__new(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.thread* @zalloc(i32 24)
  store %struct.thread* %4, %struct.thread** %3, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = icmp ne %struct.thread* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 2
  %10 = call i32 @map_groups__init(i32* %9)
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = call i64 @malloc(i32 32)
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load %struct.thread*, %struct.thread** %3, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snprintf(i64 %24, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %21, %7
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.thread*, %struct.thread** %3, align 8
  ret %struct.thread* %31
}

declare dso_local %struct.thread* @zalloc(i32) #1

declare dso_local i32 @map_groups__init(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @snprintf(i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
