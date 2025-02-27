; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_parse_query.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_parse_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.list = type { i32 }
%struct.parser = type { i32, %struct.view**, %struct.list*, i64, i64, i32* }

@WBEM_E_INVALID_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wql_parse returned %d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_query(i32* %0, %struct.view** %1, %struct.list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.view**, align 8
  %7 = alloca %struct.list*, align 8
  %8 = alloca %struct.parser, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.view** %1, %struct.view*** %6, align 8
  store %struct.list* %2, %struct.list** %7, align 8
  %10 = load %struct.view**, %struct.view*** %6, align 8
  store %struct.view* null, %struct.view** %10, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 5
  store i32* %11, i32** %12, align 8
  %13 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @WBEM_E_INVALID_QUERY, align 4
  %16 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.view**, %struct.view*** %6, align 8
  %18 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 1
  store %struct.view** %17, %struct.view*** %18, align 8
  %19 = load %struct.list*, %struct.list** %7, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 2
  store %struct.list* %19, %struct.list** %20, align 8
  %21 = call i32 @wql_parse(%struct.parser* %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 1
  %28 = load %struct.view**, %struct.view*** %27, align 8
  %29 = load %struct.view*, %struct.view** %28, align 8
  %30 = icmp ne %struct.view* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 1
  %33 = load %struct.view**, %struct.view*** %32, align 8
  %34 = load %struct.view*, %struct.view** %33, align 8
  %35 = call i32 @destroy_view(%struct.view* %34)
  %36 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 1
  %37 = load %struct.view**, %struct.view*** %36, align 8
  store %struct.view* null, %struct.view** %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @S_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @wql_parse(%struct.parser*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @destroy_view(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
