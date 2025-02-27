; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_alloc_bt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_alloc_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BACKTRACE_MAXFRAMES = common dso_local global i32 0, align 4
@vm_kernel_slid_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @kasan_alloc_bt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kasan_alloc_bt(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @BACKTRACE_MAXFRAMES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i64* %15, i64** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @BACKTRACE_MAXFRAMES, align 4
  %28 = call i32 @min(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i64*, i64** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @backtrace(i64* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %41, %23
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 0
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ false, %32 ], [ %38, %36 ]
  br i1 %40, label %41, label %48

41:                                               ; preds = %39
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  br label %32

48:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i64*, i64** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @vm_kernel_slid_base, align 8
  %60 = sub i64 %58, %59
  %61 = load i64*, i64** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %49

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %3
  %70 = load i32, i32* %10, align 4
  %71 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %71)
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @backtrace(i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
