; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_generate-requests.c_read_words.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_generate-requests.c_read_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s is an empty file, no words to try\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8***)* @read_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_words(i8* %0, i8*** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i8*** %1, i8**** %4, align 8
  store i8** null, i8*** %9, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @fgets(i8* %19, i32 256, i32* %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %25 = call i64 @strcspn(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %31, 16
  store i32 %32, i32* %6, align 4
  %33 = load i8**, i8*** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i8** @erealloc(i8** %33, i32 %37)
  store i8** %38, i8*** %9, align 8
  br label %39

39:                                               ; preds = %30, %23
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %41 = call i8* @estrdup(i8* %40)
  %42 = load i8**, i8*** %9, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  store i8* %41, i8** %46, align 8
  br label %18

47:                                               ; preds = %18
  %48 = load i8**, i8*** %9, align 8
  %49 = load i8***, i8**** %4, align 8
  store i8** %48, i8*** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @fclose(i32* %56)
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8** @erealloc(i8**, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
