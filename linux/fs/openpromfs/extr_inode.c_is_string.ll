; ModuleID = '/home/carl/AnghaBench/linux/fs/openpromfs/extr_inode.c_is_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/openpromfs/extr_inode.c_is_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @is_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_string(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i8, i8* %7, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %12
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp sge i32 %25, 32
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sle i32 %29, 126
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %20
  br label %33

32:                                               ; preds = %27, %23
  store i32 0, i32* %3, align 4
  br label %37

33:                                               ; preds = %31
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %8

36:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
