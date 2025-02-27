; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8* }

@SLI4_CB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bad parameter sli4=%p which=%#x func=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown callback %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_callback(%struct.TYPE_4__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SLI4_CB_MAX, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %12, %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @ocs_log_err(i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %20, i32 %21, i8* %22)
  store i32 -1, i32* %5, align 4
  br label %47

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %40 [
    i32 128, label %26
    i32 129, label %33
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  br label %46

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %46

40:                                               ; preds = %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ocs_log_test(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %5, align 4
  br label %47

46:                                               ; preds = %33, %26
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %40, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @ocs_log_err(i32*, i8*, %struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
