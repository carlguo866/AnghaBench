; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-jobs.c_match_job_removed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-jobs.c_match_job_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"uoss\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32*)* @match_job_removed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_job_removed(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = call i32 @assert(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %20 = call i32 @assert(%struct.TYPE_6__* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = call i32 @sd_bus_message_read(%struct.TYPE_6__* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %12, i8** %8, i8** %9, i8** %10)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @bus_log_parse_error(i32 %26)
  store i32 0, i32* %4, align 4
  br label %50

28:                                               ; preds = %3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* @set_remove(i32 %31, i8* %32)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %50

37:                                               ; preds = %28
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @empty_to_null(i8* %42)
  %44 = call i32 @free_and_strdup(i32* %41, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @empty_to_null(i8* %47)
  %49 = call i32 @free_and_strdup(i32* %46, i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %37, %36, %25
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_6__*, i8*, i32*, i8**, i8**, i8**) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i8* @set_remove(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_and_strdup(i32*, i32) #1

declare dso_local i32 @empty_to_null(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
