; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_push.c_git_push_set_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_push.c_git_push_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@GIT_PUSH_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"git_push_options\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_push_set_options(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %31

12:                                               ; preds = %8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = load i32, i32* @GIT_PUSH_OPTIONS_VERSION, align 4
  %15 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_8__* %13, i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32* %22, i32** %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32* %27, i32** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %12, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
