; ModuleID = '/home/carl/AnghaBench/numpy/numpy/f2py/src/test/extr_foomodule.c_f2py_setup_mod.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/f2py/src/test/extr_foomodule.c_f2py_setup_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, void (...)* }

@f2py_mod_def = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, void (...)*, i8*)* @f2py_setup_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2py_setup_mod(i8* %0, i8* %1, i8* %2, void (...)* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (...)*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store void (...)* %3, void (...)** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @f2py_mod_def, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @f2py_mod_def, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @f2py_mod_def, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load void (...)*, void (...)** %9, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @f2py_mod_def, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store void (...)* %23, void (...)** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @f2py_mod_def, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
