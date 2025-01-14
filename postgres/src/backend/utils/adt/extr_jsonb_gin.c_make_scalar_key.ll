; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_make_scalar_key.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_gin.c_make_scalar_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@JGINFLAG_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@JGINFLAG_BOOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@JGINFLAG_NUM = common dso_local global i32 0, align 4
@JGINFLAG_KEY = common dso_local global i32 0, align 4
@JGINFLAG_STR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"unrecognized jsonb scalar type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @make_scalar_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_scalar_key(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %71 [
    i32 130, label %10
    i32 131, label %18
    i32 129, label %33
    i32 128, label %51
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load i32, i32* @JGINFLAG_NULL, align 4
  %17 = call i32 @make_text_key(i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %17, i32* %5, align 4
  br label %77

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32, i32* @JGINFLAG_BOOL, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @make_text_key(i32 %24, i8* %31, i32 1)
  store i32 %32, i32* %5, align 4
  br label %77

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @numeric_normalize(i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = load i32, i32* @JGINFLAG_NUM, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @make_text_key(i32 %44, i8* %45, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @pfree(i8* %49)
  br label %77

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @JGINFLAG_KEY, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @JGINFLAG_STR, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @make_text_key(i32 %59, i8* %64, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %77

71:                                               ; preds = %2
  %72 = load i32, i32* @ERROR, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @elog(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %58, %33, %18, %10
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @make_text_key(i32, i8*, i32) #1

declare dso_local i8* @numeric_normalize(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
