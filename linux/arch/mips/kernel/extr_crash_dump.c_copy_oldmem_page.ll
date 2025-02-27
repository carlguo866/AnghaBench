; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_crash_dump.c_copy_oldmem_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_crash_dump.c_copy_oldmem_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kdump_buf_page = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Kdump: Kdump buffer page not allocated\0A\00", align 1
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @copy_oldmem_page(i64 %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %56

16:                                               ; preds = %5
  %17 = load i64, i64* %7, align 8
  %18 = call i8* @kmap_atomic_pfn(i64 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr i8, i8* %23, i64 %24
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @memcpy(i8* %22, i8* %25, i64 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @kunmap_atomic(i8* %28)
  br label %54

30:                                               ; preds = %16
  %31 = load i64, i64* @kdump_buf_page, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @EFAULT, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %6, align 8
  br label %56

37:                                               ; preds = %30
  %38 = load i64, i64* @kdump_buf_page, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @copy_page(i64 %38, i8* %39)
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @kunmap_atomic(i8* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* @kdump_buf_page, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @copy_to_user(i8* %43, i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i64, i64* @EFAULT, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %6, align 8
  br label %56

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %54, %50, %33, %15
  %57 = load i64, i64* %6, align 8
  ret i64 %57
}

declare dso_local i8* @kmap_atomic_pfn(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @copy_page(i64, i8*) #1

declare dso_local i64 @copy_to_user(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
