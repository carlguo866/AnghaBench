; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_sha_update.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_crypt_apple.c_mz_crypt_sha_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_HASH_SHA1 = common dso_local global i64 0, align 8
@MZ_HASH_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_crypt_sha_update(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16, %13, %3
  %22 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %16
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MZ_HASH_SHA1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @CC_SHA1_Update(i32* %31, i8* %32, i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %45

37:                                               ; preds = %23
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @CC_SHA256_Update(i32* %39, i8* %40, i32 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %37, %29
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @MZ_HASH_ERROR, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %50, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @CC_SHA1_Update(i32*, i8*, i32) #1

declare dso_local i32 @CC_SHA256_Update(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
