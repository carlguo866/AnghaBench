; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1_weak_session.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_security1_weak_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Starting Security 1 weak session test\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test pop\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error allocating session\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Error starting test\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Error creating new session\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Error testing security endpoint\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Error testing request endpoint\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Protocomm test successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @test_security1_weak_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_security1_weak_session() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = call %struct.TYPE_10__* @calloc(i32 1, i32 24)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %19, i64* %1, align 8
  br label %87

20:                                               ; preds = %0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 6, i32* %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = call i64 @start_test_service(i32 1, %struct.TYPE_11__* %3)
  %30 = load i64, i64* @ESP_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load i32, i32* @TAG, align 4
  %34 = call i32 @ESP_LOGE(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = call i32 @free(%struct.TYPE_10__* %35)
  %37 = load i64, i64* @ESP_FAIL, align 8
  store i64 %37, i64* %1, align 8
  br label %87

38:                                               ; preds = %20
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = call i64 @test_new_session(%struct.TYPE_10__* %39)
  %41 = load i64, i64* @ESP_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @TAG, align 4
  %45 = call i32 @ESP_LOGE(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 (...) @stop_test_service()
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = call i32 @free(%struct.TYPE_10__* %47)
  %49 = load i64, i64* @ESP_FAIL, align 8
  store i64 %49, i64* %1, align 8
  br label %87

50:                                               ; preds = %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = call i64 @test_sec_endpoint(%struct.TYPE_10__* %51)
  %53 = load i64, i64* @ESP_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* @TAG, align 4
  %57 = call i32 @ESP_LOGE(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @test_delete_session(%struct.TYPE_10__* %58)
  %60 = call i32 (...) @stop_test_service()
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = call i32 @free(%struct.TYPE_10__* %61)
  %63 = load i64, i64* @ESP_FAIL, align 8
  store i64 %63, i64* %1, align 8
  br label %87

64:                                               ; preds = %50
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = call i64 @test_req_endpoint(%struct.TYPE_10__* %65)
  %67 = load i64, i64* @ESP_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* @TAG, align 4
  %71 = call i32 @ESP_LOGE(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = call i32 @test_delete_session(%struct.TYPE_10__* %72)
  %74 = call i32 (...) @stop_test_service()
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = call i32 @free(%struct.TYPE_10__* %75)
  %77 = load i64, i64* @ESP_FAIL, align 8
  store i64 %77, i64* %1, align 8
  br label %87

78:                                               ; preds = %64
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = call i32 @test_delete_session(%struct.TYPE_10__* %79)
  %81 = call i32 (...) @stop_test_service()
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = call i32 @free(%struct.TYPE_10__* %82)
  %84 = load i32, i32* @TAG, align 4
  %85 = call i32 @ESP_LOGI(i32 %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i64, i64* @ESP_OK, align 8
  store i64 %86, i64* %1, align 8
  br label %87

87:                                               ; preds = %78, %69, %55, %43, %32, %16
  %88 = load i64, i64* %1, align 8
  ret i64 %88
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_10__* @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @start_test_service(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i64 @test_new_session(%struct.TYPE_10__*) #1

declare dso_local i32 @stop_test_service(...) #1

declare dso_local i64 @test_sec_endpoint(%struct.TYPE_10__*) #1

declare dso_local i32 @test_delete_session(%struct.TYPE_10__*) #1

declare dso_local i64 @test_req_endpoint(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
