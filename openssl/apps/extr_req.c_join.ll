; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_req.c_join.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_req.c_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s '%s' too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*, i8*)* @join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @join(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = add i64 %18, %19
  %21 = add i64 %20, 1
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i32, i32* @bio_err, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @BIO_printf(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  store i32 0, i32* %6, align 4
  br label %41

29:                                               ; preds = %5
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @memcpy(i8* %30, i8* %31, i64 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %13, align 8
  %39 = add i64 %38, 1
  %40 = call i32 @memcpy(i8* %36, i8* %37, i64 %39)
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %29, %24
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
