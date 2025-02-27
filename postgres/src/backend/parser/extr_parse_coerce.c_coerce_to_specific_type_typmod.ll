; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_coerce_to_specific_type_typmod.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_coerce_to_specific_type_typmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COERCION_ASSIGNMENT = common dso_local global i32 0, align 4
@COERCE_IMPLICIT_CAST = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"argument of %s must be type %s, not type %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"argument of %s must not return a set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @coerce_to_specific_type_typmod(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @exprType(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %5
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @COERCION_ASSIGNMENT, align 4
  %25 = load i32, i32* @COERCE_IMPLICIT_CAST, align 4
  %26 = call i32* @coerce_to_target_type(i32* %19, i32* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 -1)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %18
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @format_type_be(i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @format_type_be(i32 %36)
  %38 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @exprLocation(i32* %40)
  %42 = call i32 @parser_errposition(i32* %39, i32 %41)
  %43 = call i32 @ereport(i32 %30, i32 %42)
  br label %44

44:                                               ; preds = %29, %18
  %45 = load i32*, i32** %12, align 8
  store i32* %45, i32** %7, align 8
  br label %46

46:                                               ; preds = %44, %5
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @expression_returns_set(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %53 = call i32 @errcode(i32 %52)
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @exprLocation(i32* %57)
  %59 = call i32 @parser_errposition(i32* %56, i32 %58)
  %60 = call i32 @ereport(i32 %51, i32 %59)
  br label %61

61:                                               ; preds = %50, %46
  %62 = load i32*, i32** %7, align 8
  ret i32* %62
}

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32* @coerce_to_target_type(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i32 @exprLocation(i32*) #1

declare dso_local i64 @expression_returns_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
