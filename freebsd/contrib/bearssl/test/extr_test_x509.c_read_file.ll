; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_read_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"could not open file '%s'\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"read error on file '%s'\0A\00", align 1
@DIRNAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_file(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i64*, i64** %4, align 8
  %20 = call i8* @read_all(i32* %18, i64* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @ferror(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @exit(i32 %28) #3
  unreachable

30:                                               ; preds = %17
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = load i8*, i8** %6, align 8
  ret i8* %33
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @read_all(i32*, i64*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
