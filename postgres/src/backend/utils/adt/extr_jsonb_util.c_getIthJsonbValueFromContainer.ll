; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_getIthJsonbValueFromContainer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_getIthJsonbValueFromContainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not a jsonb array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getIthJsonbValueFromContainer(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = call i32 @JsonContainerIsArray(%struct.TYPE_7__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ERROR, align 4
  %14 = call i32 @elog(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i64 @JsonContainerSize(%struct.TYPE_7__* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = bitcast i32* %22 to i8*
  store i8* %23, i8** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i32* null, i32** %3, align 8
  br label %39

28:                                               ; preds = %15
  %29 = call i32* @palloc(i32 4)
  store i32* %29, i32** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @getJsonbOffset(%struct.TYPE_7__* %33, i64 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @fillJsonbValue(%struct.TYPE_7__* %30, i64 %31, i8* %32, i32 %35, i32* %36)
  %38 = load i32*, i32** %6, align 8
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %28, %27
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32 @JsonContainerIsArray(%struct.TYPE_7__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @JsonContainerSize(%struct.TYPE_7__*) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @fillJsonbValue(%struct.TYPE_7__*, i64, i8*, i32, i32*) #1

declare dso_local i32 @getJsonbOffset(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
