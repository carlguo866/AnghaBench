; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_wtoi.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_wtoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@NB_STR2LONG = common dso_local global i32 0, align 4
@str2long = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [65 x i8] c"(test %d): call failed: _wtoi(\22%s\22) has result %d, expected: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wtoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wtoi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %44, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @NB_STR2LONG, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2long, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pRtlCreateUnicodeStringFromAsciiz(%struct.TYPE_5__* %2, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @p_wtoi(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2long, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %19, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %1, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2long, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @str2long, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34, i32 %35, i32 %41)
  %43 = call i32 @pRtlFreeUnicodeString(%struct.TYPE_5__* %2)
  br label %44

44:                                               ; preds = %8
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %4

47:                                               ; preds = %4
  ret void
}

declare dso_local i32 @pRtlCreateUnicodeStringFromAsciiz(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @p_wtoi(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pRtlFreeUnicodeString(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
