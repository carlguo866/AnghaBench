; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_gc_generational_mode_set.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_gc_generational_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @gc_generational_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_generational_mode_set(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = call i32 @mrb_get_args(%struct.TYPE_6__* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %5)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @change_gen_gc_mode(%struct.TYPE_6__* %15, %struct.TYPE_7__* %17, i64 %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @mrb_bool_value(i64 %21)
  ret i32 %22
}

declare dso_local i32 @mrb_get_args(%struct.TYPE_6__*, i8*, i64*) #1

declare dso_local i32 @change_gen_gc_mode(%struct.TYPE_6__*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @mrb_bool_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
