; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonhashrhash.c_sha1_calculate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonhashrhash.c_sha1_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%08X%08X%08X%08X%08X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha1_calculate(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %12 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %13 = call i32* @filestream_open(i8* %10, i32 %11, i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %64

17:                                               ; preds = %2
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %18, align 16
  %19 = call i32 @SHA1Reset(%struct.TYPE_5__* %6)
  br label %20

20:                                               ; preds = %32, %17
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %23 = call i64 @filestream_read(i32* %21, i8* %22, i32 4096)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %64

28:                                               ; preds = %20
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @SHA1Input(%struct.TYPE_5__* %6, i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %20, label %35

35:                                               ; preds = %32
  %36 = call i32 @SHA1Result(%struct.TYPE_5__* %6)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %64

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48, i32 %52, i32 %56, i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @filestream_close(i32* %62)
  store i32 0, i32* %3, align 4
  br label %71

64:                                               ; preds = %38, %27, %16
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @filestream_close(i32* %68)
  br label %70

70:                                               ; preds = %67, %64
  store i32 -1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i32 @SHA1Reset(%struct.TYPE_5__*) #1

declare dso_local i64 @filestream_read(i32*, i8*, i32) #1

declare dso_local i32 @SHA1Input(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @SHA1Result(%struct.TYPE_5__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @filestream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
