; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_ringbuf_recv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_ringbuf_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32, i32* }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ringbuf_read_ptr = common dso_local global i32 0, align 4
@RINGBUF_GET_ONE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i32**, i64, i64)* @sdio_ringbuf_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_ringbuf_recv(%struct.TYPE_4__* %0, i32** %1, i32** %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32**, i32*** %8, align 8
  %27 = icmp eq i32** %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load i32**, i32*** %9, align 8
  %30 = icmp eq i32** %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %32, i32* %6, align 4
  br label %79

33:                                               ; preds = %28, %5
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %42, i32* %6, align 4
  br label %79

43:                                               ; preds = %33
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = load i32, i32* @ringbuf_read_ptr, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @sdio_ringbuf_offset_ptr(%struct.TYPE_4__* %44, i32 %45, i32 %48)
  store i32* %49, i32** %12, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @RINGBUF_GET_ONE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  br label %63

59:                                               ; preds = %43
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i32**, i32*** %8, align 8
  %65 = icmp ne i32** %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %12, align 8
  %68 = load i32**, i32*** %8, align 8
  store i32* %67, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32**, i32*** %9, align 8
  %71 = icmp ne i32** %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32**, i32*** %9, align 8
  store i32* %75, i32** %76, align 8
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* @ESP_OK, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %41, %31
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sdio_ringbuf_offset_ptr(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
