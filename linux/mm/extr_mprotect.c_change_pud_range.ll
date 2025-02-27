; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mprotect.c_change_pud_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mprotect.c_change_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, i32*, i64, i64, i32, i32, i32)* @change_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @change_pud_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32* @pud_offset(i32* %18, i64 %19)
  store i32* %20, i32** %15, align 8
  br label %21

21:                                               ; preds = %40, %7
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i64 @pud_addr_end(i64 %22, i64 %23)
  store i64 %24, i64* %16, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = call i64 @pud_none_or_clear_bad(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %40

29:                                               ; preds = %21
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i64 @change_pmd_range(%struct.vm_area_struct* %30, i32* %31, i64 %32, i64 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i64, i64* %17, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %17, align 8
  br label %40

40:                                               ; preds = %29, %28
  %41 = load i32*, i32** %15, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %15, align 8
  %43 = load i64, i64* %16, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %21, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %17, align 8
  ret i64 %48
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i64 @change_pmd_range(%struct.vm_area_struct*, i32*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
