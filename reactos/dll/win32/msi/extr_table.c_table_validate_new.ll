; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_table_validate_new.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_table_validate_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MSITYPE_NULLABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"skipping binary column\0A\00", align 1
@MSITYPE_STRING = common dso_local global i32 0, align 4
@ERROR_INVALID_DATA = common dso_local global i64 0, align 8
@MSI_NULL_INTEGER = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*, i64*)* @table_validate_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @table_validate_new(%struct.TYPE_6__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %98, %3
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %101

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MSITYPE_NULLABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %98

32:                                               ; preds = %20
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @MSITYPE_IS_BINARY(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %97

44:                                               ; preds = %32
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MSITYPE_STRING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %44
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  %59 = call i32* @msi_record_get_string(i32* %56, i64 %58, i32* %11)
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67, %55
  %71 = load i64*, i64** %7, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %77, i64* %4, align 8
  br label %113

78:                                               ; preds = %67, %62
  br label %96

79:                                               ; preds = %44
  %80 = load i32*, i32** %6, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  %83 = call i64 @MSI_RecordGetInteger(i32* %80, i64 %82)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @MSI_NULL_INTEGER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load i64*, i64** %7, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i64, i64* %10, align 8
  %92 = load i64*, i64** %7, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %94, i64* %4, align 8
  br label %113

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %78
  br label %97

97:                                               ; preds = %96, %42
  br label %98

98:                                               ; preds = %97, %31
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %14

101:                                              ; preds = %14
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = call i64 @msi_table_find_row(%struct.TYPE_6__* %102, i32* %103, i64* %9, i64* %104)
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @ERROR_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %110, i64* %4, align 8
  br label %113

111:                                              ; preds = %101
  %112 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %111, %109, %93, %76
  %114 = load i64, i64* %4, align 8
  ret i64 %114
}

declare dso_local i64 @MSITYPE_IS_BINARY(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @msi_record_get_string(i32*, i64, i32*) #1

declare dso_local i64 @MSI_RecordGetInteger(i32*, i64) #1

declare dso_local i64 @msi_table_find_row(%struct.TYPE_6__*, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
