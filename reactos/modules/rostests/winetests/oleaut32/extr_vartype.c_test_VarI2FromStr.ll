; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarI2FromStr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarI2FromStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCID = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@in = common dso_local global i32 0, align 4
@VarI2FromStr = common dso_local global i32 0, align 4
@EXPECT_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-32769\00", align 1
@EXPECT_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"-32768\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"32767\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"32768\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-1.5\00", align 1
@LOCALE_NOUSEROVERRIDE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"-0.6\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"-0.5\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-0.4\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"0.4\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"0.6\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarI2FromStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarI2FromStr() #0 {
  %1 = alloca [128 x i32], align 16
  %2 = load i32, i32* @LCID, align 4
  %3 = call i32 @CONVVARS(i32 %2)
  %4 = load i32, i32* @LANG_ENGLISH, align 4
  %5 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %6 = call i32 @MAKELANGID(i32 %4, i32 %5)
  %7 = load i32, i32* @SORT_DEFAULT, align 4
  %8 = call i32 @MAKELCID(i32 %6, i32 %7)
  store i32 %8, i32* @in, align 4
  %9 = load i32, i32* @VarI2FromStr, align 4
  %10 = call i32 @CONVERT_STR(i32 %9, i8* null, i32 0)
  %11 = load i32, i32* @EXPECT_MISMATCH, align 4
  %12 = load i32, i32* @VarI2FromStr, align 4
  %13 = call i32 @CONVERT_STR(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  %14 = call i32 @EXPECT(i32 0)
  %15 = load i32, i32* @VarI2FromStr, align 4
  %16 = call i32 @CONVERT_STR(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %17 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %18 = load i32, i32* @VarI2FromStr, align 4
  %19 = call i32 @CONVERT_STR(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %20 = call i32 @EXPECT(i32 -32768)
  %21 = load i32, i32* @VarI2FromStr, align 4
  %22 = call i32 @CONVERT_STR(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %23 = call i32 @EXPECT(i32 32767)
  %24 = load i32, i32* @VarI2FromStr, align 4
  %25 = call i32 @CONVERT_STR(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %26 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %27 = load i32, i32* @VarI2FromStr, align 4
  %28 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %29 = call i32 @CONVERT_STR(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %28)
  %30 = call i32 @EXPECT(i32 -2)
  %31 = load i32, i32* @VarI2FromStr, align 4
  %32 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %33 = call i32 @CONVERT_STR(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %32)
  %34 = call i32 @EXPECT(i32 -1)
  %35 = load i32, i32* @VarI2FromStr, align 4
  %36 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %37 = call i32 @CONVERT_STR(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  %38 = call i32 @EXPECT(i32 0)
  %39 = load i32, i32* @VarI2FromStr, align 4
  %40 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %41 = call i32 @CONVERT_STR(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %40)
  %42 = call i32 @EXPECT(i32 0)
  %43 = load i32, i32* @VarI2FromStr, align 4
  %44 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %45 = call i32 @CONVERT_STR(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %44)
  %46 = call i32 @EXPECT(i32 0)
  %47 = load i32, i32* @VarI2FromStr, align 4
  %48 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %49 = call i32 @CONVERT_STR(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %48)
  %50 = call i32 @EXPECT(i32 0)
  %51 = load i32, i32* @VarI2FromStr, align 4
  %52 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %53 = call i32 @CONVERT_STR(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %52)
  %54 = call i32 @EXPECT(i32 1)
  %55 = load i32, i32* @VarI2FromStr, align 4
  %56 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %57 = call i32 @CONVERT_STR(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %56)
  %58 = call i32 @EXPECT(i32 2)
  ret void
}

declare dso_local i32 @CONVVARS(i32) #1

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @CONVERT_STR(i32, i8*, i32) #1

declare dso_local i32 @EXPECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
