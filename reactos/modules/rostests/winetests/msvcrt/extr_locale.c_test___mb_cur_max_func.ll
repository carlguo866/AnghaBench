; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_locale.c_test___mb_cur_max_func.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_locale.c_test___mb_cur_max_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mb_cur_max = %d, expected 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"chinese\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Skipping test with chinese locale\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"mb_cur_max = %d, expected 2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test___mb_cur_max_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test___mb_cur_max_func() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @LC_ALL, align 4
  %3 = call i32 @setlocale(i32 %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @p___mb_cur_max_func()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @LC_ALL, align 4
  %11 = call i32 @setlocale(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %24

15:                                               ; preds = %0
  %16 = call i32 (...) @p___mb_cur_max_func()
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @LC_ALL, align 4
  %23 = call i32 @setlocale(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %15, %13
  %25 = call i32* (...) @p__p___mb_cur_max()
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @LC_ALL, align 4
  %33 = call i32 @setlocale(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %47

37:                                               ; preds = %24
  %38 = call i32* (...) @p__p___mb_cur_max()
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @LC_ALL, align 4
  %46 = call i32 @setlocale(i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %37, %35
  ret void
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @p___mb_cur_max_func(...) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32* @p__p___mb_cur_max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
