; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_read_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_MPI_RW_BUFFER_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_MPI_FILE_IO_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_read_file(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @MBEDTLS_MPI_RW_BUFFER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = trunc i64 %15 to i32
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  %20 = sub i64 %15, 1
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @fgets(i8* %17, i32 %21, i32* %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @MBEDTLS_ERR_MPI_FILE_IO_ERROR, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %85

27:                                               ; preds = %3
  %28 = call i64 @strlen(i8* %17)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub i64 %15, 2
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @MBEDTLS_ERR_MPI_BUFFER_TOO_SMALL, align 4
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %85

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %17, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %17, i64 %47
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %44, %37, %34
  %50 = load i64, i64* %9, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %17, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 13
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i8, i8* %17, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %59, %52, %49
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %17, i64 %65
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %78, %64
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %69, i8** %10, align 8
  %70 = icmp ugt i8* %68, %17
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @mpi_get_digit(i32* %8, i32 %72, i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %79

78:                                               ; preds = %71
  br label %67

79:                                               ; preds = %77, %67
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i32 @mbedtls_mpi_read_string(i32* %80, i32 %81, i8* %83)
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %79, %32, %25
  %86 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @mpi_get_digit(i32*, i32, i8 signext) #2

declare dso_local i32 @mbedtls_mpi_read_string(i32*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
