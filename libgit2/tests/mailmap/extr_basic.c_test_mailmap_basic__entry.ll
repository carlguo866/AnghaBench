; ModuleID = '/home/carl/AnghaBench/libgit2/tests/mailmap/extr_basic.c_test_mailmap_basic__entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/mailmap/extr_basic.c_test_mailmap_basic__entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@expected = common dso_local global %struct.TYPE_10__* null, align 8
@mailmap = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_mailmap_basic__entry() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** @expected, align 8
  %4 = call i64 @ARRAY_SIZE(%struct.TYPE_10__* %3)
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mailmap, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = call i32 @git_vector_length(i32* %6)
  %8 = call i32 @cl_assert_equal_sz(i64 %4, i32 %7)
  store i64 0, i64* %1, align 8
  br label %9

9:                                                ; preds = %65, %0
  %10 = load i64, i64* %1, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @expected, align 8
  %12 = call i64 @ARRAY_SIZE(%struct.TYPE_10__* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %9
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mailmap, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @expected, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @expected, align 8
  %22 = load i64, i64* %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_8__* @git_mailmap_entry_lookup(%struct.TYPE_9__* %15, i32 %20, i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %2, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = call i32 @cl_assert(%struct.TYPE_8__* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @expected, align 8
  %33 = load i64, i64* %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cl_assert_equal_s(i32 %31, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @expected, align 8
  %42 = load i64, i64* %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cl_assert_equal_s(i32 %40, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @expected, align 8
  %51 = load i64, i64* %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cl_assert_equal_s(i32 %49, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @expected, align 8
  %60 = load i64, i64* %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cl_assert_equal_s(i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %14
  %66 = load i64, i64* %1, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %1, align 8
  br label %9

68:                                               ; preds = %9
  ret void
}

declare dso_local i32 @cl_assert_equal_sz(i64, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @git_vector_length(i32*) #1

declare dso_local %struct.TYPE_8__* @git_mailmap_entry_lookup(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_8__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
