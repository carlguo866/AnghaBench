; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/lib/extr_checksum.c_csum_partial_copy_from_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/lib/extr_checksum.c_csum_partial_copy_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csum_partial_copy_from_user(i8* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @copy_from_user(i8* %12, i8* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr i8, i8* %22, i64 %25
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @memset(i8* %26, i32 0, i32 %27)
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %18, %5
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @csum_partial(i8* %33, i32 %34, i32 %35)
  ret i32 %36
}

declare dso_local i32 @copy_from_user(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @csum_partial(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
