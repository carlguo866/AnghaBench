; ModuleID = '/home/carl/AnghaBench/openvpn/src/compat/extr_compat-dirname.c___memrchr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/compat/extr_compat-dirname.c___memrchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i64)* @__memrchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__memrchr(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = sub i64 %10, 1
  %12 = load i8*, i8** %8, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 %11
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp uge i8* %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %4, align 8
  br label %31

26:                                               ; preds = %18
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %26
  br label %14

30:                                               ; preds = %14
  store i8* null, i8** %4, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
