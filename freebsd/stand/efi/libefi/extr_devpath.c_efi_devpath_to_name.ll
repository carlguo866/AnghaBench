; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_to_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_devpath_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i8**)* }

@BS = common dso_local global %struct.TYPE_2__* null, align 8
@EfiLoaderData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @efi_devpath_to_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @efi_devpath_to_name(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @efi_translate_devpath(i32* %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %46

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @utf8_to_ucs2(i8* %16, i8** %5, i64* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  store i8* null, i8** %8, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BS, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i64, i8**)*, i32 (i32, i64, i8**)** %24, align 8
  %26 = load i32, i32* @EfiLoaderData, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 %25(i32 %26, i64 %27, i8** %8)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @EFI_ERROR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %2, align 8
  br label %46

36:                                               ; preds = %22
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %36, %15
  %45 = load i8*, i8** %5, align 8
  store i8* %45, i8** %2, align 8
  br label %46

46:                                               ; preds = %44, %32, %14
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

declare dso_local i8* @efi_translate_devpath(i32*) #1

declare dso_local i32 @utf8_to_ucs2(i8*, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @EFI_ERROR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
