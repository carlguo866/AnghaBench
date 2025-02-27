; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_roundTripCrash.c_fileCheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_roundTripCrash.c_fileCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"not enough memory \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @fileCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fileCheck(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @getFileSize(i8* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = add i64 %9, %14
  %16 = call i8* @malloc(i64 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @exit(i32 4) #3
  unreachable

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @loadFile(i8* %24, i8* %25, i64 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @roundTripCheck(i8* %28, i64 %29, i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @free(i8* %32)
  ret void
}

declare dso_local i64 @getFileSize(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @loadFile(i8*, i8*, i64) #1

declare dso_local i32 @roundTripCheck(i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
