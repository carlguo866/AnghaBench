; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_dbCksum.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_dbCksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i32)* @dbCksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbCksum(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %11, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = call i32 @unused_parameter(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @unused_parameter(i32 %24)
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %42, %5
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = shl i32 %31, 3
  %33 = load i64*, i64** %11, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %32, %38
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  ret void
}

declare dso_local i32 @unused_parameter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
