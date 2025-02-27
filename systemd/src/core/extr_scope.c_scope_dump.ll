; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_dump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%sScope State: %s\0A%sResult: %s\0A%sRuntimeMaxSec: %s\0A\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i8*)* @scope_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scope_dump(i32* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_10__* @SCOPE(i32* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = call i32 @assert(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call i32 @assert(%struct.TYPE_10__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @scope_state_to_string(i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @scope_result_to_string(i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = trunc i64 %13 to i32
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USEC_PER_SEC, align 4
  %37 = call i8* @format_timespan(i8* %15, i32 %32, i32 %35, i32 %36)
  %38 = call i32 @fprintf(%struct.TYPE_10__* %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %25, i8* %26, i8* %30, i8* %31, i8* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = call i32 @UNIT(%struct.TYPE_10__* %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @cgroup_context_dump(i32 %40, %struct.TYPE_10__* %41, i8* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @kill_context_dump(i32* %45, %struct.TYPE_10__* %46, i8* %47)
  %49 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

declare dso_local %struct.TYPE_10__* @SCOPE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @fprintf(%struct.TYPE_10__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @scope_state_to_string(i32) #1

declare dso_local i8* @scope_result_to_string(i32) #1

declare dso_local i8* @format_timespan(i8*, i32, i32, i32) #1

declare dso_local i32 @cgroup_context_dump(i32, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @UNIT(%struct.TYPE_10__*) #1

declare dso_local i32 @kill_context_dump(i32*, %struct.TYPE_10__*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
