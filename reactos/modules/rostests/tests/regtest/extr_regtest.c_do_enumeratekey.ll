; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_do_enumeratekey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_do_enumeratekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"NtEnumerateKey : \0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@KeyBasicInformation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"\09SubKey Name = \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_enumeratekey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x %struct.TYPE_3__], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @RtlInitUnicodeString(i32* %10, i32 %11)
  %13 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %14 = call i32 @InitializeObjectAttributes(i32* %8, i32* %10, i32 %13, i32* null, i32* null)
  %15 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %16 = call i64 @NtOpenKey(i32* %9, i32 %15, i32* %8)
  store i64 %16, i64* %7, align 8
  %17 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %55, %1
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @STATUS_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @KeyBasicInformation, align 4
  %27 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %28 = call i64 @NtEnumerateKey(i32 %23, i32 %24, i32 %26, %struct.TYPE_3__* %27, i32 80, i32* %4)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @STATUS_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %22
  %33 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %50, %32
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 16
  %39 = sdiv i32 %38, 2
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %34

53:                                               ; preds = %34
  %54 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %22
  br label %18

56:                                               ; preds = %18
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @NtClose(i32 %57)
  ret void
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @NtOpenKey(i32*, i32, i32*) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i64 @NtEnumerateKey(i32, i32, i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
