; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ssl.c_ssl_poll_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ssl.c_ssl_poll_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.timeval = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ssl_poll_write select error %d, errno = %s, fd = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ssl_poll_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_poll_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_5__* @esp_transport_get_context_data(i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %5, align 8
  store i32 -1, i32* %6, align 4
  %14 = call i32 @FD_ZERO(i32* %7)
  %15 = call i32 @FD_ZERO(i32* %8)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @FD_SET(i64 %20, i32* %7)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @FD_SET(i64 %26, i32* %8)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @esp_transport_utils_ms_to_timeval(i32 %28, %struct.timeval* %9)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @select(i64 %35, i32* null, i32* %7, i32* %8, %struct.timeval* %9)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @FD_ISSET(i64 %44, i32* %8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @SOL_SOCKET, align 4
  %54 = load i32, i32* @SO_ERROR, align 4
  %55 = call i32 @getsockopt(i64 %52, i32 %53, i32 %54, i32* %10, i32* %11)
  %56 = load i32, i32* @TAG, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ESP_LOGE(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %59, i64 %64)
  store i32 -1, i32* %6, align 4
  br label %66

66:                                               ; preds = %47, %39, %2
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_5__* @esp_transport_get_context_data(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @esp_transport_utils_ms_to_timeval(i32, %struct.timeval*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @getsockopt(i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
