; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_data.c_is_bin.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_data.c_is_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\CF\FA\ED\FE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"MZ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @is_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_bin(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 4
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @memcmp(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %30

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @memcmp(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %30

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @memcmp(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %24, %21
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %20, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
