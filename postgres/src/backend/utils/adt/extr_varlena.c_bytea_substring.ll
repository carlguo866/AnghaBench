; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_bytea_substring.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_bytea_substring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SUBSTRING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"negative substring length not allowed\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, i32)* @bytea_substring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bytea_substring(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @Max(i32 %13, i32 1)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %11, align 4
  br label %40

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_SUBSTRING_ERROR, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32* @PG_STR_GET_BYTEA(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %35, i32** %5, align 8
  br label %46

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %36, %17
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %11, align 4
  %45 = call i32* @DatumGetByteaPSlice(i32 %41, i32 %43, i32 %44)
  store i32* %45, i32** %5, align 8
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32*, i32** %5, align 8
  ret i32* %47
}

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @PG_STR_GET_BYTEA(i8*) #1

declare dso_local i32* @DatumGetByteaPSlice(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
