; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/pe/extr_pe.c_bin_pe_rva_to_paddr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/pe/extr_pe.c_bin_pe_rva_to_paddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64)* @bin_pe_rva_to_paddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bin_pe_rva_to_paddr(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %56, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %15
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub nsw i64 %51, %52
  %54 = add nsw i64 %50, %53
  store i64 %54, i64* %3, align 8
  br label %61

55:                                               ; preds = %35, %15
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %9

59:                                               ; preds = %9
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %59, %42
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
