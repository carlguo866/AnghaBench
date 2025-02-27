; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_shims.c_pthread_kext_register.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_shims.c_pthread_kext_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pthread_functions = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Re-initialisation of pthread kext callbacks.\00", align 1
@pthread_callbacks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"pthread_kext_register called without callbacks pointer.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pthread_kext_register(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load i32*, i32** @pthread_functions, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32**, i32*** %4, align 8
  %11 = icmp ne i32** %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32**, i32*** %4, align 8
  store i32* @pthread_callbacks, i32** %13, align 8
  br label %16

14:                                               ; preds = %9
  %15 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  store i32* %20, i32** @pthread_functions, align 8
  br label %21

21:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
