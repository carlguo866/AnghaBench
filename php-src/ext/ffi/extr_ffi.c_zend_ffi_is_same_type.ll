; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_is_same_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_is_same_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }

@ZEND_FFI_TYPE_POINTER = common dso_local global i64 0, align 8
@ZEND_FFI_TYPE_VOID = common dso_local global i64 0, align 8
@ZEND_FFI_TYPE_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)* @zend_ffi_is_same_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_is_same_type(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  br label %6

6:                                                ; preds = %2, %89
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = icmp eq %struct.TYPE_9__* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 1, i32* %3, align 4
  br label %91

11:                                               ; preds = %6
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %87

19:                                               ; preds = %11
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %91

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_9__* @ZEND_FFI_TYPE(i32 %36)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_9__* @ZEND_FFI_TYPE(i32 %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %5, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ZEND_FFI_TYPE_VOID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %32
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ZEND_FFI_TYPE_VOID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %32
  store i32 1, i32* %3, align 4
  br label %91

55:                                               ; preds = %48
  br label %85

56:                                               ; preds = %26
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ZEND_FFI_TYPE_ARRAY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %66, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.TYPE_9__* @ZEND_FFI_TYPE(i32 %76)
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %4, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.TYPE_9__* @ZEND_FFI_TYPE(i32 %81)
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %5, align 8
  br label %84

83:                                               ; preds = %62, %56
  br label %90

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %55
  br label %86

86:                                               ; preds = %85
  br label %88

87:                                               ; preds = %11
  br label %90

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %88
  br label %6

90:                                               ; preds = %87, %83
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %54, %25, %10
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_9__* @ZEND_FFI_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
