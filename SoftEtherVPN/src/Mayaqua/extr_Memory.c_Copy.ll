; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_Copy.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_Copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KS_COPY_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Copy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12, %9, %3
  br label %27

20:                                               ; preds = %15
  %21 = load i32, i32* @KS_COPY_COUNT, align 4
  %22 = call i32 @KS_INC(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @memcpy(i8* %23, i8* %24, i64 %25)
  br label %27

27:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @KS_INC(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
