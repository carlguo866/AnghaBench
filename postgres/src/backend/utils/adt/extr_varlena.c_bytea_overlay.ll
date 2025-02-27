; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_bytea_overlay.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_bytea_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SUBSTRING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"negative substring length not allowed\00", align 1
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"integer out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32)* @bytea_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bytea_overlay(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_SUBSTRING_ERROR, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @ereport(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @pg_add_s32_overflow(i32 %22, i32 %23, i32* %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @PointerGetDatum(i32* %33)
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32* @bytea_substring(i32 %34, i32 1, i32 %36, i32 0)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @PointerGetDatum(i32* %38)
  %40 = load i32, i32* %12, align 4
  %41 = call i32* @bytea_substring(i32 %39, i32 %40, i32 -1, i32 1)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @bytea_catenate(i32* %42, i32* %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32* @bytea_catenate(i32* %45, i32* %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  ret i32* %48
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @pg_add_s32_overflow(i32, i32, i32*) #1

declare dso_local i32* @bytea_substring(i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32* @bytea_catenate(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
