; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c__stringlist_contains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c__stringlist_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @_stringlist_contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_stringlist_contains(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %31, %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i64 @memcmp(i8* %17, i8* %18, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %45

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @memchr(i8* %25, i8 signext 0, i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %45

31:                                               ; preds = %24
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = add nsw i64 %36, 1
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %5, align 8
  br label %12

44:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %30, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
