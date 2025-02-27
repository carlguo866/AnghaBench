; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_stringlist_count.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_stringlist_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_BADVALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_stringlist_count(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @fdt_getprop(i8* %12, i32 %13, i8* %14, i32* %10)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %57

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %48, %20
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @strnlen(i8* %30, i32 %36)
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ugt i8* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load i32, i32* @FDT_ERR_BADVALUE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %57

48:                                               ; preds = %29
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %25

55:                                               ; preds = %25
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %45, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i8* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
