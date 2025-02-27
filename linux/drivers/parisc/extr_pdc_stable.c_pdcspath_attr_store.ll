; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcspath_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcspath_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.pdcspath_entry = type { i32 }
%struct.pdcspath_attribute = type { i32 (%struct.pdcspath_entry*, i8*, i64)* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @pdcspath_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdcspath_attr_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pdcspath_entry*, align 8
  %11 = alloca %struct.pdcspath_attribute*, align 8
  %12 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.kobject*, %struct.kobject** %6, align 8
  %14 = call %struct.pdcspath_entry* @to_pdcspath_entry(%struct.kobject* %13)
  store %struct.pdcspath_entry* %14, %struct.pdcspath_entry** %10, align 8
  %15 = load %struct.attribute*, %struct.attribute** %7, align 8
  %16 = call %struct.pdcspath_attribute* @to_pdcspath_attribute(%struct.attribute* %15)
  store %struct.pdcspath_attribute* %16, %struct.pdcspath_attribute** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %4
  %24 = load %struct.pdcspath_attribute*, %struct.pdcspath_attribute** %11, align 8
  %25 = getelementptr inbounds %struct.pdcspath_attribute, %struct.pdcspath_attribute* %24, i32 0, i32 0
  %26 = load i32 (%struct.pdcspath_entry*, i8*, i64)*, i32 (%struct.pdcspath_entry*, i8*, i64)** %25, align 8
  %27 = icmp ne i32 (%struct.pdcspath_entry*, i8*, i64)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.pdcspath_attribute*, %struct.pdcspath_attribute** %11, align 8
  %30 = getelementptr inbounds %struct.pdcspath_attribute, %struct.pdcspath_attribute* %29, i32 0, i32 0
  %31 = load i32 (%struct.pdcspath_entry*, i8*, i64)*, i32 (%struct.pdcspath_entry*, i8*, i64)** %30, align 8
  %32 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %10, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 %31(%struct.pdcspath_entry* %32, i8* %33, i64 %34)
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %28, %23
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.pdcspath_entry* @to_pdcspath_entry(%struct.kobject*) #1

declare dso_local %struct.pdcspath_attribute* @to_pdcspath_attribute(%struct.attribute*) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
