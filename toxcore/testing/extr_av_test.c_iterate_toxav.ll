; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_iterate_toxav.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_iterate_toxav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toxav_thread_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"\0DIteration interval: %d            \00", align 1
@stdout = common dso_local global i32 0, align 4
@CV_WINDOW_AUTOSIZE = common dso_local global i32 0, align 4
@vdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iterate_toxav(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.toxav_thread_data*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.toxav_thread_data*
  store %struct.toxav_thread_data* %7, %struct.toxav_thread_data** %4, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.toxav_thread_data*, %struct.toxav_thread_data** %4, align 8
  %10 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load %struct.toxav_thread_data*, %struct.toxav_thread_data** %4, align 8
  %15 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @toxav_iterate(i32 %16)
  %18 = load %struct.toxav_thread_data*, %struct.toxav_thread_data** %4, align 8
  %19 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @toxav_iterate(i32 %20)
  %22 = load %struct.toxav_thread_data*, %struct.toxav_thread_data** %4, align 8
  %23 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @toxav_iteration_interval(i32 %24)
  %26 = load %struct.toxav_thread_data*, %struct.toxav_thread_data** %4, align 8
  %27 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @toxav_iteration_interval(i32 %28)
  %30 = call i32 @MIN(i32 %25, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fflush(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @c_sleep(i32 %35)
  br label %8

37:                                               ; preds = %8
  %38 = load %struct.toxav_thread_data*, %struct.toxav_thread_data** %4, align 8
  %39 = getelementptr inbounds %struct.toxav_thread_data, %struct.toxav_thread_data* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = call i32 @pthread_exit(i32* null)
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local i32 @toxav_iterate(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @toxav_iteration_interval(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @c_sleep(i32) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
