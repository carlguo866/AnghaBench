; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr.c_xdr_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr.c_xdr_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"xdr_bytes: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_bytes(%struct.TYPE_5__* %0, i8** %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = call i32 @xdr_u_int(%struct.TYPE_5__* %17, i64* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  br label %97

23:                                               ; preds = %4
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 128
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %97

36:                                               ; preds = %29, %23
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %95 [
    i32 130, label %40
    i32 129, label %60
    i32 128, label %85
  ]

40:                                               ; preds = %36
  %41 = load i64, i64* %11, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %5, align 4
  br label %97

45:                                               ; preds = %40
  %46 = load i8*, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i64, i64* %11, align 8
  %50 = call i8* @mem_alloc(i64 %49)
  store i8* %50, i8** %10, align 8
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i8*, i8** %10, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %5, align 4
  br label %97

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %36, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @xdr_opaque(%struct.TYPE_5__* %61, i8* %62, i64 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 130
  br i1 %68, label %69, label %83

69:                                               ; preds = %60
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @mem_free(i8* %78, i64 %79)
  %81 = load i8**, i8*** %7, align 8
  store i8* null, i8** %81, align 8
  br label %82

82:                                               ; preds = %77, %73
  br label %83

83:                                               ; preds = %82, %69, %60
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %97

85:                                               ; preds = %36
  %86 = load i8*, i8** %10, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @mem_free(i8* %89, i64 %90)
  %92 = load i8**, i8*** %7, align 8
  store i8* null, i8** %92, align 8
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %5, align 4
  br label %97

95:                                               ; preds = %36
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %93, %83, %56, %43, %34, %21
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @xdr_u_int(%struct.TYPE_5__*, i64*) #1

declare dso_local i8* @mem_alloc(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xdr_opaque(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i32 @mem_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
