; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_check_attr_readability.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_check_attr_readability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GATT_ENCRYPT_KEY_SIZE_MASK = common dso_local global i32 0, align 4
@GATT_READ_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"GATT_READ_NOT_PERMIT\0A\00", align 1
@GATT_READ_NOT_PERMIT = common dso_local global i32 0, align 4
@GATT_READ_AUTH_REQUIRED = common dso_local global i32 0, align 4
@GATT_SEC_FLAG_LKEY_UNAUTHED = common dso_local global i32 0, align 4
@BTM_SEC_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"GATT_INSUF_AUTHENTICATION\0A\00", align 1
@GATT_INSUF_AUTHENTICATION = common dso_local global i32 0, align 4
@GATT_READ_MITM_REQUIRED = common dso_local global i32 0, align 4
@GATT_SEC_FLAG_LKEY_AUTHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"GATT_INSUF_AUTHENTICATION: MITM Required\0A\00", align 1
@GATT_READ_ENCRYPTED_REQUIRED = common dso_local global i32 0, align 4
@GATT_SEC_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"GATT_INSUF_ENCRYPTION\0A\00", align 1
@GATT_INSUF_ENCRYPTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"GATT_INSUF_KEY_SIZE\0A\00", align 1
@GATT_INSUF_KEY_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"GATT_NOT_LONG\0A\00", align 1
@GATT_NOT_LONG = common dso_local global i32 0, align 4
@GATT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64, i32, i32)* @gatts_check_attr_readability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatts_check_attr_readability(%struct.TYPE_3__* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @UNUSED(i32 %17)
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @GATT_ENCRYPT_KEY_SIZE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 12
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 6
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %5
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @GATT_READ_ALLOWED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @GATT_READ_NOT_PERMIT, align 4
  store i32 %35, i32* %6, align 4
  br label %111

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @GATT_READ_AUTH_REQUIRED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @GATT_SEC_FLAG_LKEY_UNAUTHED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @BTM_SEC_FLAG_ENCRYPTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @GATT_INSUF_AUTHENTICATION, align 4
  store i32 %53, i32* %6, align 4
  br label %111

54:                                               ; preds = %46, %41, %36
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @GATT_READ_MITM_REQUIRED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @GATT_SEC_FLAG_LKEY_AUTHED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @GATT_INSUF_AUTHENTICATION, align 4
  store i32 %66, i32* %6, align 4
  br label %111

67:                                               ; preds = %59, %54
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @GATT_READ_ENCRYPTED_REQUIRED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @GATT_SEC_FLAG_ENCRYPTED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @GATT_INSUF_ENCRYPTION, align 4
  store i32 %79, i32* %6, align 4
  br label %111

80:                                               ; preds = %72, %67
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @GATT_READ_ENCRYPTED_REQUIRED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @GATT_SEC_FLAG_ENCRYPTED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @GATT_INSUF_KEY_SIZE, align 4
  store i32 %96, i32* %6, align 4
  br label %111

97:                                               ; preds = %90, %85, %80
  %98 = load i64, i64* %9, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %107 [
    i32 129, label %104
    i32 128, label %104
    i32 134, label %104
    i32 130, label %104
    i32 133, label %104
    i32 135, label %104
    i32 131, label %104
    i32 132, label %104
  ]

104:                                              ; preds = %100, %100, %100, %100, %100, %100, %100, %100
  %105 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @GATT_NOT_LONG, align 4
  store i32 %106, i32* %6, align 4
  br label %111

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %104, %94, %77, %64, %51, %33
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
