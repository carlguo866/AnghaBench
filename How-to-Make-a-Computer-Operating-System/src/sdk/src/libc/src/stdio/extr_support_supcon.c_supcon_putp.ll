; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_supcon.c_supcon_putp.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_supcon.c_supcon_putp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @supcon_putp(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  store i32 126, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %55

15:                                               ; preds = %2
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 127
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %44, %15
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = urem i32 %21, 16
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 48, %26
  %28 = trunc i32 %27 to i8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 %31
  store i8 %28, i8* %32, align 1
  br label %44

33:                                               ; preds = %20
  %34 = load i8, i8* %4, align 1
  %35 = sext i8 %34 to i32
  %36 = sub nsw i32 %35, 10
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = trunc i32 %38 to i8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 %42
  store i8 %39, i8* %43, align 1
  br label %44

44:                                               ; preds = %33, %25
  %45 = load i32, i32* %7, align 4
  %46 = udiv i32 %45, 16
  store i32 %46, i32* %7, align 4
  br label %17

47:                                               ; preds = %17
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fputs(i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %12
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
