; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-test/extr_driver.c_eval_test.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-test/extr_driver.c_eval_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"report\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @eval_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eval_test(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @mrb_top_self(%struct.TYPE_7__* %5)
  %7 = call i32 @mrb_funcall(%struct.TYPE_7__* %4, i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i32 @mrb_print_error(%struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = call i32 @check_error(%struct.TYPE_7__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %22, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @mrb_funcall(%struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i32 @mrb_top_self(%struct.TYPE_7__*) #1

declare dso_local i32 @mrb_print_error(%struct.TYPE_7__*) #1

declare dso_local i32 @check_error(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
