; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_hash.c_do_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_hash.c_do_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @do_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_hash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %32, %3
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %7, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %26, %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 255
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 8
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %8, align 4
  br label %23

32:                                               ; preds = %23
  br label %12

33:                                               ; preds = %12
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = srem i32 %34, %35
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
