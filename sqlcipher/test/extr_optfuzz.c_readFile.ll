; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_optfuzz.c_readFile.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_optfuzz.c_readFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @readFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readFile(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %53

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i32 @fseek(i32* %16, i32 0, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @ftell(i32* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @rewind(i32* %21)
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i8* @sqlite3_malloc64(i64 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %53

29:                                               ; preds = %15
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @fread(i8* %30, i64 %31, i32 1, i32* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @sqlite3_free(i8* %39)
  store i8* null, i8** %3, align 8
  br label %53

41:                                               ; preds = %29
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i8*, i8** %9, align 8
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %51, %38, %28, %14
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i64 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
