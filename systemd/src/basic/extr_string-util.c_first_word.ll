; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_string-util.c_first_word.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_string-util.c_first_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WHITESPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @first_word(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %58

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %3, align 8
  br label %58

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @memcmp(i8* %27, i8* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %58

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  store i8* %42, i8** %3, align 8
  br label %58

43:                                               ; preds = %33
  %44 = load i32, i32* @WHITESPACE, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @strchr(i32 %44, i8 signext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i8* null, i8** %3, align 8
  br label %58

50:                                               ; preds = %43
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @WHITESPACE, align 4
  %53 = call i32 @strspn(i8* %51, i32 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** %3, align 8
  br label %58

58:                                               ; preds = %50, %49, %41, %32, %24, %20
  %59 = load i8*, i8** %3, align 8
  ret i8* %59
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @strchr(i32, i8 signext) #1

declare dso_local i32 @strspn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
