; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_heap.c_lkdtm_WRITE_AFTER_FREE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_heap.c_lkdtm_WRITE_AFTER_FREE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Allocated memory %p-%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Attempting bad write to freed memory at %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Hmm, didn't get the same memory range.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_WRITE_AFTER_FREE() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 1024, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = udiv i64 %5, 4
  %7 = udiv i64 %6, 2
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32* @kmalloc(i64 %8, i32 %9)
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  br label %40

14:                                               ; preds = %0
  %15 = load i32*, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = load i64, i64* %4, align 8
  %18 = mul i64 %17, 2
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %15, i32* %19)
  %21 = load i32*, i32** %1, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 180150000, i32* %29, align 4
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kmalloc(i64 %30, i32 %31)
  store i32* %32, i32** %2, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = icmp ne i32* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %14
  %39 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %13, %38, %14
  ret void
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
