; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_misc_tools.c_hex_string_to_bin.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_misc_tools.c_hex_string_to_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%2hhx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hex_string_to_bin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = sdiv i32 %8, 2
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32* @malloc(i64 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i8*, i8** %2, align 8
  store i8* %13, i8** %6, align 8
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %28, i8** %6, align 8
  br label %14

29:                                               ; preds = %14
  %30 = load i32*, i32** %5, align 8
  ret i32* %30
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
