; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmGetExternalAndInternalPath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmGetExternalAndInternalPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_BAD_PATHNAME = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8**)* @AcpiDmGetExternalAndInternalPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDmGetExternalAndInternalPath(i32* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %12, i32* %4, align 4
  br label %37

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @AcpiNsGetExternalPathname(i32* %14)
  %16 = load i8**, i8*** %6, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @AE_BAD_PATHNAME, align 4
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %13
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = call i32 @AcpiNsInternalizeName(i8* %24, i8** %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @ACPI_FREE(i8* %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @AE_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %30, %20, %11
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i8* @AcpiNsGetExternalPathname(i32*) #1

declare dso_local i32 @AcpiNsInternalizeName(i8*, i8**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
