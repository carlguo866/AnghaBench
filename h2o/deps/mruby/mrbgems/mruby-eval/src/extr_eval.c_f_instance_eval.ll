; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_f_instance_eval.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_f_instance_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.RProc = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"*!&\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"s|zi\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @f_instance_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_instance_eval(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.RProc*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = bitcast i32** %8 to i8**
  %17 = call i32 (%struct.TYPE_12__*, i8*, i8**, ...) @mrb_get_args(%struct.TYPE_12__* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %16, i32* %7, i32* %6)
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @mrb_nil_p(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %2
  store i8* null, i8** %11, align 8
  store i32 1, i32* %12, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 (%struct.TYPE_12__*, i8*, i8**, ...) @mrb_get_args(%struct.TYPE_12__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, i32* %10, i8** %11, i32* %12)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mrb_singleton_class(%struct.TYPE_12__* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (...) @mrb_nil_value()
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call %struct.RProc* @create_proc_from_string(%struct.TYPE_12__* %27, i8* %28, i32 %29, i32 %30, i8* %31, i32 %32)
  store %struct.RProc* %33, %struct.RProc** %14, align 8
  %34 = load %struct.RProc*, %struct.RProc** %14, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @mrb_class_ptr(i32 %35)
  %37 = call i32 @MRB_PROC_SET_TARGET_CLASS(%struct.RProc* %34, i32 %36)
  %38 = load %struct.RProc*, %struct.RProc** %14, align 8
  %39 = call i32 @MRB_PROC_CFUNC_P(%struct.RProc* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @mrb_assert(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @mrb_class_ptr(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.RProc*, %struct.RProc** %14, align 8
  %55 = call i32 @exec_irep(%struct.TYPE_12__* %52, i32 %53, %struct.RProc* %54)
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %2
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = bitcast i32* %6 to i8**
  %59 = call i32 (%struct.TYPE_12__*, i8*, i8**, ...) @mrb_get_args(%struct.TYPE_12__* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @mrb_obj_instance_eval(%struct.TYPE_12__* %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mrb_get_args(%struct.TYPE_12__*, i8*, i8**, ...) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_singleton_class(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.RProc* @create_proc_from_string(%struct.TYPE_12__*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @MRB_PROC_SET_TARGET_CLASS(%struct.RProc*, i32) #1

declare dso_local i32 @mrb_class_ptr(i32) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

declare dso_local i32 @exec_irep(%struct.TYPE_12__*, i32, %struct.RProc*) #1

declare dso_local i32 @mrb_obj_instance_eval(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
