; ModuleID = '/home/carl/AnghaBench/tig/src/extr_argv.c_argv_to_string_alloc.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_argv.c_argv_to_string_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @argv_to_string_alloc(i8** %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i8**, i8*** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i8**, i8*** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %9

26:                                               ; preds = %9
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load i8**, i8*** %4, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @argv_to_string(i8** %33, i8* %34, i64 %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %3, align 8
  br label %45

42:                                               ; preds = %32, %26
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  store i8* null, i8** %3, align 8
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @argv_to_string(i8**, i8*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
