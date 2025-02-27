; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_table_name_from_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_table_name_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@AE_BAD_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64*)* @osl_table_name_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osl_table_name_from_file(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @AE_BAD_SIGNATURE, align 4
  store i32 %13, i32* %4, align 4
  br label %43

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = call i64 @isdigit(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i64*, i64** %7, align 8
  %27 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %26)
  br label %38

28:                                               ; preds = %14
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @AE_BAD_SIGNATURE, align 4
  store i32 %34, i32* %4, align 4
  br label %43

35:                                               ; preds = %28
  %36 = load i64*, i64** %7, align 8
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @ACPI_COPY_NAMESEG(i8* %39, i8* %40)
  %42 = load i32, i32* @AE_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %33, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @ACPI_COPY_NAMESEG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
