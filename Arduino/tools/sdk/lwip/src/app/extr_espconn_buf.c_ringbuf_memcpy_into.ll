; ModuleID = '/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/app/extr_espconn_buf.c_ringbuf_memcpy_into.c'
source_filename = "/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/app/extr_espconn_buf.c_ringbuf_memcpy_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ringbuf_memcpy_into(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i8* @ringbuf_end(%struct.TYPE_7__* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i64 @ringbuf_bytes_free(%struct.TYPE_7__* %16)
  %18 = icmp ugt i64 %15, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %71, %3
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ugt i8* %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @lwIP_ASSERT(i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %32 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = sub i64 %40, %41
  %43 = call i64 @LWIP_MIN(i32 %39, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr i8, i8* %47, i64 %48
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @os_memcpy(i8* %46, i8* %49, i64 %50)
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr i8, i8* %55, i64 %52
  store i8* %56, i8** %54, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %24
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %65, %24
  br label %20

72:                                               ; preds = %20
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @ringbuf_nextp(%struct.TYPE_7__* %76, i8* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = call i32 @ringbuf_is_full(%struct.TYPE_7__* %83)
  %85 = call i32 @lwIP_ASSERT(i32 %84)
  br label %86

86:                                               ; preds = %75, %72
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  ret i8* %89
}

declare dso_local i8* @ringbuf_end(%struct.TYPE_7__*) #1

declare dso_local i64 @ringbuf_bytes_free(%struct.TYPE_7__*) #1

declare dso_local i32 @lwIP_ASSERT(i32) #1

declare dso_local i64 @LWIP_MIN(i32, i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ringbuf_nextp(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ringbuf_is_full(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
