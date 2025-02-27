; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_exec_io_priority.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_exec_io_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@IOPRIO_CLASS_BE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to parse IO priority, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_exec_io_priority(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %25 = load i8*, i8** %20, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %22, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %19, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %20, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %19, align 8
  %36 = call i64 @isempty(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %10
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* @IOPRIO_CLASS_BE, align 4
  %42 = call i8* @IOPRIO_PRIO_VALUE(i32 %41, i32 0)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  store i32 0, i32* %11, align 4
  br label %69

45:                                               ; preds = %10
  %46 = load i8*, i8** %19, align 8
  %47 = call i32 @ioprio_parse_priority(i8* %46, i32* %23)
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %24, align 4
  %56 = load i8*, i8** %19, align 8
  %57 = call i32 @log_syntax(i8* %51, i32 %52, i8* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %56)
  store i32 0, i32* %11, align 4
  br label %69

58:                                               ; preds = %45
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @IOPRIO_PRIO_CLASS(i8* %61)
  %63 = load i32, i32* %23, align 4
  %64 = call i8* @IOPRIO_PRIO_VALUE(i32 %62, i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %58, %50, %38
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i8* @IOPRIO_PRIO_VALUE(i32, i32) #1

declare dso_local i32 @ioprio_parse_priority(i8*, i32*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @IOPRIO_PRIO_CLASS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
