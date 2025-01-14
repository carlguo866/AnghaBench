; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__update_terminal.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__update_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reference__update_terminal(i32* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @git_reference__log_signature(i32** %14, i32* %20)
  store i32 %21, i32* %16, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %16, align 4
  store i32 %24, i32* %6, align 4
  br label %103

25:                                               ; preds = %19, %5
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  br label %32

30:                                               ; preds = %25
  %31 = load i32*, i32** %14, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32* [ %29, %28 ], [ %31, %30 ]
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @get_terminal(%struct.TYPE_8__** %12, i32* %34, i8* %35, i32 0)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @GIT_ENOTFOUND, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %45 = call i64 @git_reference_type(%struct.TYPE_8__* %44)
  %46 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = call i32 (...) @git_error_clear()
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @reference__create(%struct.TYPE_8__** %13, i32* %51, i8* %55, i32* %56, i32* null, i32 0, i32* %57, i8* %58, i32* null, i32* null)
  store i32 %59, i32* %16, align 4
  br label %95

60:                                               ; preds = %40, %32
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @GIT_ENOTFOUND, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = call i32 (...) @git_error_clear()
  %66 = load i32*, i32** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @reference__create(%struct.TYPE_8__** %13, i32* %66, i8* %67, i32* %68, i32* null, i32 0, i32* %69, i8* %70, i32* null, i32* null)
  store i32 %71, i32* %16, align 4
  br label %94

72:                                               ; preds = %60
  %73 = load i32, i32* %16, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = call i64 @git_reference_type(%struct.TYPE_8__* %76)
  %78 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = call i32 @reference__create(%struct.TYPE_8__** %13, i32* %82, i8* %85, i32* %86, i32* null, i32 1, i32* %87, i8* %88, i32* %91, i32* null)
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %75, %72
  br label %94

94:                                               ; preds = %93, %64
  br label %95

95:                                               ; preds = %94, %43
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %97 = call i32 @git_reference_free(%struct.TYPE_8__* %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %99 = call i32 @git_reference_free(%struct.TYPE_8__* %98)
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @git_signature_free(i32* %100)
  %102 = load i32, i32* %16, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %95, %23
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @git_reference__log_signature(i32**, i32*) #1

declare dso_local i32 @get_terminal(%struct.TYPE_8__**, i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_reference_type(%struct.TYPE_8__*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @reference__create(%struct.TYPE_8__**, i32*, i8*, i32*, i32*, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_8__*) #1

declare dso_local i32 @git_signature_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
