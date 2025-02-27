; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_parse_unit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_parse_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_unit(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  store i32 -1, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @isdigit(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @simple_strtoul(i8* %14, i8** %5, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %45

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = load i8**, i8*** %3, align 8
  store i8* %21, i8** %22, align 8
  br label %43

23:                                               ; preds = %1
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 97, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 122
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 97
  store i32 %37, i32* %6, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8**, i8*** %3, align 8
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %33, %28, %23
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
