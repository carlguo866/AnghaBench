; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-engine.c_support_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-engine.c_support_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@teach_file_name = common dso_local global i32 0, align 4
@index_mode = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error: fail to lock paged memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @support_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %27 [
    i32 109, label %5
    i32 116, label %14
    i32 105, label %16
    i32 107, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @optarg, align 4
  %7 = call i32 @atoi(i32 %6)
  store i32 %7, i32* @max_memory, align 4
  %8 = load i32, i32* @max_memory, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i32 1, i32* @max_memory, align 4
  br label %11

11:                                               ; preds = %10, %5
  %12 = load i32, i32* @max_memory, align 4
  %13 = mul nsw i32 %12, 1048576
  store i32 %13, i32* @max_memory, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load i32, i32* @optarg, align 4
  store i32 %15, i32* @teach_file_name, align 4
  br label %28

16:                                               ; preds = %1
  store i32 1, i32* @index_mode, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load i32, i32* @MCL_CURRENT, align 4
  %19 = load i32, i32* @MCL_FUTURE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @mlockall(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %17
  br label %28

27:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %29

28:                                               ; preds = %26, %16, %14, %11
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
