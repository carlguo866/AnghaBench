; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_TypeOutputFunctions.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_TypeOutputFunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64*, i32)* @TypeOutputFunctions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @TypeOutputFunctions(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32* @palloc0(i32 %16)
  store i32* %17, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %51, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %9, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %32 = load i64, i64* @InvalidOid, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @InvalidOid, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %51

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @getTypeBinaryOutputInfo(i64 %41, i64* %12, i32* %11)
  br label %46

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @getTypeOutputInfo(i64 %44, i64* %12, i32* %11)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %12, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @fmgr_info(i64 %48, i32* %49)
  br label %51

51:                                               ; preds = %47, %36
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %18

54:                                               ; preds = %18
  %55 = load i32*, i32** %7, align 8
  ret i32* %55
}

declare dso_local i32* @palloc0(i32) #1

declare dso_local i32 @getTypeBinaryOutputInfo(i64, i64*, i32*) #1

declare dso_local i32 @getTypeOutputInfo(i64, i64*, i32*) #1

declare dso_local i32 @fmgr_info(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
