; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_dump.c_BIO_hex_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_dump.c_BIO_hex_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X:\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_hex_string(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %75

17:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %52, %17
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %18
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %26, %23
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %9, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %33
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %18

55:                                               ; preds = %18
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %58, %55
  %66 = load i32*, i32** %7, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %65, %16
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
