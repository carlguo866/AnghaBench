; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_str_to_immediate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_str_to_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @str_to_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_to_immediate(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = call i64 @isdigit(i8 signext %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = call i32 @kstrtoul(i8* %12, i32 0, i64* %13)
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = call i32 @kstrtol(i8* %22, i32 0, i64* %23)
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %15
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 43
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i64*, i64** %5, align 8
  %35 = call i32 @kstrtol(i8* %33, i32 0, i64* %34)
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %31, %21, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
