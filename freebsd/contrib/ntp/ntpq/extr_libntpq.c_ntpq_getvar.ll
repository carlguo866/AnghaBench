; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_getvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_getvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ntpq_getvar(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %14, align 8
  br label %18

18:                                               ; preds = %35, %5
  %19 = call i64 @nextvar(i64* %14, i8** %7, i8** %12, i8** %13)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = call i64 @strcmp(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @ntpq_stripquotes(i8* %27, i8* %28, i64 %30, i64 %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %6, align 8
  br label %37

35:                                               ; preds = %21
  br label %18

36:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i64, i64* %6, align 8
  ret i64 %38
}

declare dso_local i64 @nextvar(i64*, i8**, i8**, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ntpq_stripquotes(i8*, i8*, i64, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
