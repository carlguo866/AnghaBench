; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_util.c_first_alpha.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_util.c_first_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"<[(\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c">])\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @first_alpha(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %52, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @tolower(i8 signext %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %14
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %31, %27
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @isalpha(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @strchr(i8* %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %44, %40, %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %9

55:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i64 @isalpha(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
