; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_print_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_print_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"unsigned char %s[%d] = {\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02X, \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_array(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %49, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = srem i32 %19, 10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %48

39:                                               ; preds = %25
  %40 = load i32*, i32** %5, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %39, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %14

52:                                               ; preds = %14
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
