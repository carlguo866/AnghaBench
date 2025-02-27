; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_add_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_add_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.ucl_parser = type { i32, %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.ucl_stack = type { i32, %struct.TYPE_10__* }

@UCL_OBJECT = common dso_local global i8* null, align 8
@UCL_PARSER_KEY_LOWERCASE = common dso_local global i32 0, align 4
@UCL_STATE_KEY = common dso_local global i32 0, align 4
@UCL_ARRAY = common dso_local global i8* null, align 8
@UCL_STATE_VALUE = common dso_local global i32 0, align 4
@UCL_EINTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot allocate memory for an object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, %struct.ucl_parser*, i32, i32)* @ucl_parser_add_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @ucl_parser_add_container(%struct.TYPE_10__* %0, %struct.ucl_parser* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.ucl_parser*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucl_stack*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.ucl_parser* %1, %struct.ucl_parser** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i8*, i8** @UCL_OBJECT, align 8
  %18 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %19 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %18, i32 0, i32 5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_10__* @ucl_object_new_full(i8* %17, i32 %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %6, align 8
  br label %28

24:                                               ; preds = %13
  %25 = load i8*, i8** @UCL_OBJECT, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %16
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %36 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @UCL_PARSER_KEY_LOWERCASE, align 4
  %39 = and i32 %37, %38
  %40 = call i32* @ucl_hash_create(i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  br label %44

44:                                               ; preds = %34, %28
  %45 = load i32, i32* @UCL_STATE_KEY, align 4
  %46 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %47 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  br label %67

48:                                               ; preds = %4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = icmp eq %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i8*, i8** @UCL_ARRAY, align 8
  %53 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %54 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %53, i32 0, i32 5
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_10__* @ucl_object_new_full(i8* %52, i32 %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %6, align 8
  br label %63

59:                                               ; preds = %48
  %60 = load i8*, i8** @UCL_ARRAY, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %59, %51
  %64 = load i32, i32* @UCL_STATE_VALUE, align 4
  %65 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %66 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %44
  %68 = call %struct.ucl_stack* @UCL_ALLOC(i32 16)
  store %struct.ucl_stack* %68, %struct.ucl_stack** %10, align 8
  %69 = load %struct.ucl_stack*, %struct.ucl_stack** %10, align 8
  %70 = icmp eq %struct.ucl_stack* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %73 = load i32, i32* @UCL_EINTERNAL, align 4
  %74 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %75 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %74, i32 0, i32 3
  %76 = call i32 @ucl_set_err(%struct.ucl_parser* %72, i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = call i32 @ucl_object_unref(%struct.TYPE_10__* %77)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %95

79:                                               ; preds = %67
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = load %struct.ucl_stack*, %struct.ucl_stack** %10, align 8
  %82 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %81, i32 0, i32 1
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.ucl_stack*, %struct.ucl_stack** %10, align 8
  %85 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %87 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ucl_stack*, %struct.ucl_stack** %10, align 8
  %90 = call i32 @LL_PREPEND(i32 %88, %struct.ucl_stack* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %93 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %92, i32 0, i32 1
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %5, align 8
  br label %95

95:                                               ; preds = %79, %71
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %96
}

declare dso_local %struct.TYPE_10__* @ucl_object_new_full(i8*, i32) #1

declare dso_local i32* @ucl_hash_create(i32) #1

declare dso_local %struct.ucl_stack* @UCL_ALLOC(i32) #1

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

declare dso_local i32 @ucl_object_unref(%struct.TYPE_10__*) #1

declare dso_local i32 @LL_PREPEND(i32, %struct.ucl_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
