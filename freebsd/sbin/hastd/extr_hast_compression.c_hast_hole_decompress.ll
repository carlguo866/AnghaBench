; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hast_compression.c_hast_hole_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hast_compression.c_hast_hole_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Unable to decompress (invalid size: %zu).\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to decompress (no memory: %zu).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @hast_hole_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hast_hole_decompress(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 8
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @pjdlog_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %13)
  store i8* null, i8** %3, align 8
  br label %34

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @bcopy(i8* %16, i64* %6, i32 8)
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @le32toh(i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @pjdlog_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  store i8* null, i8** %3, align 8
  br label %34

27:                                               ; preds = %15
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @bzero(i8* %28, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load i64*, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %27, %24, %11
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i32 @pjdlog_error(i8*, i64) #1

declare dso_local i32 @bcopy(i8*, i64*, i32) #1

declare dso_local i64 @le32toh(i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @bzero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
