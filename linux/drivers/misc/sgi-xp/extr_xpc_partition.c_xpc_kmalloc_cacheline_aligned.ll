; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_kmalloc_cacheline_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_kmalloc_cacheline_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CACHE_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xpc_kmalloc_cacheline_aligned(i64 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i8* @kmalloc(i64 %8, i32 %9)
  %11 = load i8**, i8*** %7, align 8
  store i8* %10, i8** %11, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %48

16:                                               ; preds = %3
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = call i64 @L1_CACHE_ALIGN(i64 %22)
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  br label %48

28:                                               ; preds = %16
  %29 = load i8**, i8*** %7, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @L1_CACHE_BYTES, align 8
  %34 = add i64 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @kmalloc(i64 %34, i32 %35)
  %37 = load i8**, i8*** %7, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i8* null, i8** %4, align 8
  br label %48

42:                                               ; preds = %28
  %43 = load i8**, i8*** %7, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = call i64 @L1_CACHE_ALIGN(i64 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %42, %41, %25, %15
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @L1_CACHE_ALIGN(i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
