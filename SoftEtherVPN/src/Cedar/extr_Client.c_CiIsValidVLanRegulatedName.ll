; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiIsValidVLanRegulatedName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiIsValidVLanRegulatedName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CiIsValidVLanRegulatedName(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i32, i32* @MAX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = trunc i64 %17 to i32
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @CiGenerateVLanRegulatedName(i8* %19, i32 %20, i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @StrCmpi(i8* %23, i8* %19)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %28

27:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %29)
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %38 [
    i32 0, label %31
    i32 1, label %36
  ]

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %12

35:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %28, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37

38:                                               ; preds = %28
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CiGenerateVLanRegulatedName(i8*, i32, i32) #2

declare dso_local i64 @StrCmpi(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
