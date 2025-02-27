; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_cmd_mdns_query_ptr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_cmd_mdns_query_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i8** }
%struct.TYPE_6__ = type { i8** }

@mdns_query_ptr_args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Query PTR: %s.%s.local, Timeout: %d, Max Results: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ERROR: Query Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"No results found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_mdns_query_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_mdns_query_ptr(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @arg_parse(i32 %13, i8** %14, i8** bitcast (%struct.TYPE_10__* @mdns_query_ptr_args to i8**))
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mdns_query_ptr_args, i32 0, i32 4), align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @arg_print_errors(i32 %19, i32 %20, i8* %23)
  store i32 1, i32* %3, align 4
  br label %81

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mdns_query_ptr_args, i32 0, i32 3), align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mdns_query_ptr_args, i32 0, i32 2), align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mdns_query_ptr_args, i32 0, i32 1), align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mdns_query_ptr_args, i32 0, i32 0), align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %25
  store i32 5000, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %10, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49
  store i32 255, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %58, i32 %59, i32 %60)
  store i32* null, i32** %11, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @mdns_query_ptr(i8* %62, i8* %63, i32 %64, i32 %65, i32** %11)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %81

71:                                               ; preds = %56
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %81

76:                                               ; preds = %71
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @mdns_print_results(i32* %77)
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @mdns_query_results_free(i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %74, %69, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @mdns_query_ptr(i8*, i8*, i32, i32, i32**) #1

declare dso_local i32 @mdns_print_results(i32*) #1

declare dso_local i32 @mdns_query_results_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
