; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_error.c_hx509_set_error_stringv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_error.c_hx509_set_error_stringv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, i32 }

@HX509_ERROR_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hx509_set_error_stringv(%struct.TYPE_9__* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %59

15:                                               ; preds = %5
  %16 = call %struct.TYPE_8__* @calloc(i32 1, i32 24)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = call i32 @hx509_clear_error_string(%struct.TYPE_9__* %20)
  br label %59

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @vasprintf(i32* %24, i8* %25, i32 %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = call i32 @hx509_clear_error_string(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = call i32 @free(%struct.TYPE_8__* %32)
  br label %59

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %50, align 8
  br label %59

51:                                               ; preds = %34
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @free_error_string(%struct.TYPE_8__* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %58, align 8
  br label %59

59:                                               ; preds = %14, %19, %29, %51, %42
  ret void
}

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @hx509_clear_error_string(%struct.TYPE_9__*) #1

declare dso_local i32 @vasprintf(i32*, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @free_error_string(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
