; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng_encode.c_rpng_save_image_bgr24_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng_encode.c_rpng_save_image_bgr24_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFLATE_PADDING = common dso_local global i32 0, align 4
@PNG_ROUGH_HEADER = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_WRITE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rpng_save_image_bgr24_string(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = mul i32 %17, %18
  %20 = mul i32 %19, 3
  %21 = load i32, i32* @DEFLATE_PADDING, align 4
  %22 = mul i32 %20, %21
  %23 = load i32, i32* @PNG_ROUGH_HEADER, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i64 @malloc(i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %5
  %34 = call i32 (...) @GOTO_END_ERROR()
  br label %35

35:                                               ; preds = %33, %5
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  %38 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32* @intfstream_open_writable_memory(i32* %36, i32 %37, i32 %38, i32 %39)
  store i32* %40, i32** %16, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @rpng_save_image_stream(i32* %41, i32* %42, i32 %43, i32 %44, i32 %45, i32 3)
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %16, align 8
  %48 = call i32 @intfstream_get_ptr(i32* %47)
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @intfstream_rewind(i32* %50)
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i64 @malloc(i32 %56)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %35
  %62 = call i32 (...) @GOTO_END_ERROR()
  br label %63

63:                                               ; preds = %61, %35
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @intfstream_read(i32* %64, i32* %65, i32 %67)
  br label %69

69:                                               ; preds = %63
  %70 = load i32*, i32** %13, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @free(i32* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %16, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @free(i32* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32*, i32** %14, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @free(i32* %88)
  br label %90

90:                                               ; preds = %87, %84
  store i32* null, i32** %6, align 8
  br label %93

91:                                               ; preds = %81
  %92 = load i32*, i32** %14, align 8
  store i32* %92, i32** %6, align 8
  br label %93

93:                                               ; preds = %91, %90
  %94 = load i32*, i32** %6, align 8
  ret i32* %94
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @GOTO_END_ERROR(...) #1

declare dso_local i32* @intfstream_open_writable_memory(i32*, i32, i32, i32) #1

declare dso_local i32 @rpng_save_image_stream(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @intfstream_get_ptr(i32*) #1

declare dso_local i32 @intfstream_rewind(i32*) #1

declare dso_local i32 @intfstream_read(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
