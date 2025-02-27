; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddUuidSequence.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddUuidSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDP_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SDP_AddUuidSequence cannot get a buffer!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@UUID_DESC_TYPE = common dso_local global i32 0, align 4
@SIZE_TWO_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"SDP_AddUuidSequence - too long, add %d uuids of %d\0A\00", align 1
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_AddUuidSequence(i32 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %16 = sub nsw i32 %15, 3
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = mul i64 %19, 2
  %21 = trunc i64 %20 to i32
  %22 = call i64 @osi_malloc(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %80

28:                                               ; preds = %4
  %29 = load i32*, i32** %11, align 8
  store i32* %29, i32** %12, align 8
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %59, %28
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* @UUID_DESC_TYPE, align 4
  %37 = shl i32 %36, 3
  %38 = load i32, i32* @SIZE_TWO_BYTES, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @UINT8_TO_BE_STREAM(i32* %35, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @UINT16_TO_BE_STREAM(i32* %41, i64 %43)
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = ptrtoint i32* %45 to i64
  %48 = ptrtoint i32* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp sgt i64 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %34
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %56)
  br label %64

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %10, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %9, align 8
  br label %30

64:                                               ; preds = %54, %30
  %65 = load i32, i32* %6, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* @DATA_ELE_SEQ_DESC_TYPE, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @SDP_AddAttribute(i32 %65, i64 %66, i32 %67, i32 %74, i32* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @osi_free(i32* %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %64, %25
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*) #1

declare dso_local i32 @UINT8_TO_BE_STREAM(i32*, i32) #1

declare dso_local i32 @UINT16_TO_BE_STREAM(i32*, i64) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i64, i64) #1

declare dso_local i32 @SDP_AddAttribute(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @osi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
