; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_load_wrong_args.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_load_wrong_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"json_loads should return NULL if the first argument is NULL\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"json_loadb should return NULL if the first argument is NULL\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"json_loadf should return NULL if the first argument is NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_wrong_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_wrong_args() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32* @json_loads(i32* null, i32 0, i32* %2)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @fail(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32* @json_loadb(i32* null, i32 0, i32 0, i32* %2)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @fail(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  %15 = call i32* @json_loadf(i32* null, i32 0, i32* %2)
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @fail(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = call i32* @json_load_file(i32* null, i32 0, i32* %2)
  store i32* %21, i32** %1, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @fail(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32* @json_loads(i32*, i32, i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32* @json_loadb(i32*, i32, i32, i32*) #1

declare dso_local i32* @json_loadf(i32*, i32, i32*) #1

declare dso_local i32* @json_load_file(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
