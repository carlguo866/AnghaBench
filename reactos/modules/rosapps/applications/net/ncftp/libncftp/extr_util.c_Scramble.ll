; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_Scramble.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_Scramble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Scramble(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %12, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %49, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %52

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i64, i64* %12, align 8
  %37 = trunc i64 %36 to i32
  %38 = srem i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %33, %42
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %16

52:                                               ; preds = %31, %16
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 0, i8* %56, align 1
  ret void
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
