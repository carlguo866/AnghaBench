; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_crc_finish.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_crc_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@PNG_INFLATE_BUF_SIZE = common dso_local global i32 0, align 4
@PNG_FLAG_CRC_ANCILLARY_NOWARN = common dso_local global i32 0, align 4
@PNG_FLAG_CRC_CRITICAL_USE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_crc_finish(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load i32, i32* @PNG_INFLATE_BUF_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = mul nuw i64 4, %14
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %21, %12
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub nsw i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @png_crc_read(%struct.TYPE_7__* %27, i32* %16, i64 %28)
  %30 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %30)
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i64 @png_crc_error(%struct.TYPE_7__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @PNG_CHUNK_ANCILLARY(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_NOWARN, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %58

48:                                               ; preds = %35
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PNG_FLAG_CRC_CRITICAL_USE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48, %41
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = call i32 @png_chunk_warning(%struct.TYPE_7__* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %61

58:                                               ; preds = %48, %41
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = call i32 @png_chunk_error(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  store i32 1, i32* %3, align 4
  br label %63

62:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @png_crc_read(%struct.TYPE_7__*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @png_crc_error(%struct.TYPE_7__*) #2

declare dso_local i64 @PNG_CHUNK_ANCILLARY(i32) #2

declare dso_local i32 @png_chunk_warning(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @png_chunk_error(%struct.TYPE_7__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
