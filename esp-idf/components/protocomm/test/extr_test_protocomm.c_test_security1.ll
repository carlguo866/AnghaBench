; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Starting Sec1 test\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test pop\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error allocating session\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Sec1 test failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Sec1 test successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @test_security1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_security1() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = call %struct.TYPE_6__* @calloc(i32 1, i32 16)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %19, i64* %1, align 8
  br label %43

20:                                               ; preds = %0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 7, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i64 @test_protocomm(%struct.TYPE_6__* %27)
  %29 = load i64, i64* @ESP_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 @ESP_LOGE(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = call i32 @free(%struct.TYPE_6__* %34)
  %36 = load i64, i64* @ESP_FAIL, align 8
  store i64 %36, i64* %1, align 8
  br label %43

37:                                               ; preds = %20
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = call i32 @free(%struct.TYPE_6__* %40)
  %42 = load i64, i64* @ESP_OK, align 8
  store i64 %42, i64* %1, align 8
  br label %43

43:                                               ; preds = %37, %31, %16
  %44 = load i64, i64* %1, align 8
  ret i64 %44
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @test_protocomm(%struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
