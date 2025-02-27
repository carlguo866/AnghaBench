; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_vn_openat.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_vn_openat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UMEM_NOFAIL = common dso_local global i32 0, align 4
@rootdir = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_openat(i8* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32 %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32** %4, i32*** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %22, 2
  %24 = load i32, i32* @UMEM_NOFAIL, align 4
  %25 = call i8* @umem_alloc(i64 %23, i32 %24)
  store i8* %25, i8** %19, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = load i32*, i32** @rootdir, align 8
  %28 = icmp eq i32* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i8*, i8** %19, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %19, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32**, i32*** %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @vn_open(i8* %34, i32 %35, i32 %36, i32 %37, i32** %38, i32 %39, i32 %40)
  store i32 %41, i32* %20, align 4
  %42 = load i8*, i8** %19, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = add nsw i64 %44, 2
  %46 = call i32 @umem_free(i8* %42, i64 %45)
  %47 = load i32, i32* %20, align 4
  ret i32 %47
}

declare dso_local i8* @umem_alloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @vn_open(i8*, i32, i32, i32, i32**, i32, i32) #1

declare dso_local i32 @umem_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
