; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_strings.c_get_localtime.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_strings.c_get_localtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"localtime_r\00", align 1
@PyExc_OSError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to use '%s' to convert to a local time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.tm*)* @get_localtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_localtime(i32* %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.tm*, %struct.tm** %5, align 8
  %9 = call i32* @localtime_r(i32* %7, %struct.tm* %8)
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

13:                                               ; preds = %11
  %14 = load i32, i32* @PyExc_OSError, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @PyErr_Format(i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  store i32 -1, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
