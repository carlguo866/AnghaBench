; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_service.c_kull_m_service_install.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_service.c_kull_m_service_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SERVICES_ACTIVE_DATABASE = common dso_local global i32 0, align 4
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@SC_MANAGER_CREATE_SERVICE = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i32] [i32 91, i32 43, i32 93, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 97, i32 108, i32 114, i32 101, i32 97, i32 100, i32 121, i32 32, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 101, i32 114, i32 101, i32 100, i32 10, i32 0], align 4
@ERROR_SERVICE_DOES_NOT_EXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i32] [i32 91, i32 42, i32 93, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 110, i32 111, i32 116, i32 32, i32 112, i32 114, i32 101, i32 115, i32 101, i32 110, i32 116, i32 10, i32 0], align 4
@READ_CONTROL = common dso_local global i32 0, align 4
@WRITE_DAC = common dso_local global i32 0, align 4
@SERVICE_ERROR_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i32] [i32 91, i32 43, i32 93, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 115, i32 117, i32 99, i32 99, i32 101, i32 115, i32 115, i32 102, i32 117, i32 108, i32 108, i32 121, i32 32, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 101, i32 114, i32 101, i32 100, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [34 x i32] [i32 91, i32 43, i32 93, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 65, i32 67, i32 76, i32 32, i32 116, i32 111, i32 32, i32 101, i32 118, i32 101, i32 114, i32 121, i32 111, i32 110, i32 101, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [28 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 95, i32 97, i32 100, i32 100, i32 87, i32 111, i32 114, i32 108, i32 100, i32 84, i32 111, i32 83, i32 68, i32 0], align 4
@.str.5 = private unnamed_addr constant [14 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@.str.6 = private unnamed_addr constant [12 x i32] [i32 79, i32 112, i32 101, i32 110, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@.str.7 = private unnamed_addr constant [26 x i32] [i32 91, i32 43, i32 93, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 115, i32 116, i32 97, i32 114, i32 116, i32 101, i32 100, i32 10, i32 0], align 4
@ERROR_SERVICE_ALREADY_RUNNING = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [34 x i32] [i32 91, i32 42, i32 93, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 115, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 97, i32 108, i32 114, i32 101, i32 97, i32 100, i32 121, i32 32, i32 115, i32 116, i32 97, i32 114, i32 116, i32 101, i32 100, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [13 x i32] [i32 83, i32 116, i32 97, i32 114, i32 116, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@.str.10 = private unnamed_addr constant [22 x i32] [i32 79, i32 112, i32 101, i32 110, i32 83, i32 67, i32 77, i32 97, i32 110, i32 97, i32 103, i32 101, i32 114, i32 40, i32 99, i32 114, i32 101, i32 97, i32 116, i32 101, i32 41, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_service_install(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %17 = load i32, i32* @SERVICES_ACTIVE_DATABASE, align 4
  %18 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %19 = load i32, i32* @SC_MANAGER_CREATE_SERVICE, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @OpenSCManager(i32* null, i32 %17, i32 %20)
  store i32* %21, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %101

23:                                               ; preds = %6
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SERVICE_START, align 4
  %27 = call i32* @OpenService(i32* %24, i32 %25, i32 %26)
  store i32* %27, i32** %15, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @kprintf(i8* bitcast ([37 x i32]* @.str to i8*), i32 %30)
  br label %71

32:                                               ; preds = %23
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @ERROR_SERVICE_DOES_NOT_EXIST, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @kprintf(i8* bitcast ([30 x i32]* @.str.1 to i8*), i32 %37)
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @READ_CONTROL, align 4
  %43 = load i32, i32* @WRITE_DAC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SERVICE_START, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SERVICE_ERROR_NORMAL, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32* @CreateService(i32* %39, i32 %40, i32 %41, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32* %51, i32** %15, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @kprintf(i8* bitcast ([42 x i32]* @.str.2 to i8*), i32 %54)
  %56 = load i32*, i32** %15, align 8
  %57 = call i64 @kull_m_service_addWorldToSD(i32* %56)
  store i64 %57, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @kprintf(i8* bitcast ([34 x i32]* @.str.3 to i8*), i32 %60)
  br label %64

62:                                               ; preds = %53
  %63 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([28 x i32]* @.str.4 to i8*))
  br label %64

64:                                               ; preds = %62, %59
  br label %67

65:                                               ; preds = %36
  %66 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([14 x i32]* @.str.5 to i8*))
  br label %67

67:                                               ; preds = %65, %64
  br label %70

68:                                               ; preds = %32
  %69 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([12 x i32]* @.str.6 to i8*))
  br label %70

70:                                               ; preds = %68, %67
  br label %71

71:                                               ; preds = %70, %29
  %72 = load i32*, i32** %15, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load i32*, i32** %15, align 8
  %79 = call i64 @StartService(i32* %78, i32 0, i32* null)
  store i64 %79, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @kprintf(i8* bitcast ([26 x i32]* @.str.7 to i8*), i32 %82)
  br label %94

84:                                               ; preds = %77
  %85 = call i64 (...) @GetLastError()
  %86 = load i64, i64* @ERROR_SERVICE_ALREADY_RUNNING, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @kprintf(i8* bitcast ([34 x i32]* @.str.8 to i8*), i32 %89)
  br label %93

91:                                               ; preds = %84
  %92 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str.9 to i8*))
  br label %93

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93, %81
  br label %95

95:                                               ; preds = %94, %74
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @CloseServiceHandle(i32* %96)
  br label %98

98:                                               ; preds = %95, %71
  %99 = load i32*, i32** %14, align 8
  %100 = call i32 @CloseServiceHandle(i32* %99)
  br label %103

101:                                              ; preds = %6
  %102 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.10 to i8*))
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i64, i64* %13, align 8
  ret i64 %104
}

declare dso_local i32* @OpenSCManager(i32*, i32, i32) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @CreateService(i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @kull_m_service_addWorldToSD(i32*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @StartService(i32*, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
