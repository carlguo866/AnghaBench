; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_remove_tick_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_remove_tick_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i32 }
%struct.python_obs_callback = type { i32 }

@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No active script, report this to Jim\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @obs_python_remove_tick_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @obs_python_remove_tick_callback(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_python_script*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.python_obs_callback*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.obs_python_script*, %struct.obs_python_script** @cur_python_script, align 8
  store %struct.obs_python_script* %9, %struct.obs_python_script** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %11 = icmp ne %struct.obs_python_script* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @PyExc_RuntimeError, align 4
  %14 = call i32 @PyErr_SetString(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @UNUSED_PARAMETER(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @parse_args(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32** %7)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32* (...) @python_none()
  store i32* %22, i32** %3, align 8
  br label %43

23:                                               ; preds = %15
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @PyFunction_Check(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %23
  %31 = call i32* (...) @python_none()
  store i32* %31, i32** %3, align 8
  br label %43

32:                                               ; preds = %26
  %33 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call %struct.python_obs_callback* @find_python_obs_callback(%struct.obs_python_script* %33, i32* %34)
  store %struct.python_obs_callback* %35, %struct.python_obs_callback** %8, align 8
  %36 = load %struct.python_obs_callback*, %struct.python_obs_callback** %8, align 8
  %37 = icmp ne %struct.python_obs_callback* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.python_obs_callback*, %struct.python_obs_callback** %8, align 8
  %40 = call i32 @remove_python_obs_callback(%struct.python_obs_callback* %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = call i32* (...) @python_none()
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %41, %30, %21, %12
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @parse_args(i32*, i8*, i32**) #1

declare dso_local i32* @python_none(...) #1

declare dso_local i32 @PyFunction_Check(i32*) #1

declare dso_local %struct.python_obs_callback* @find_python_obs_callback(%struct.obs_python_script*, i32*) #1

declare dso_local i32 @remove_python_obs_callback(%struct.python_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
