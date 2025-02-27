; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_dcache_page_indexed_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_dcache_page_indexed_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cache_noop = common dso_local global i64 0, align 8
@r4k_blast_dcache_page_indexed = common dso_local global i8* null, align 8
@blast_dcache16_page_indexed = common dso_local global i8* null, align 8
@blast_dcache32_page_indexed = common dso_local global i8* null, align 8
@blast_dcache64_page_indexed = common dso_local global i8* null, align 8
@blast_dcache128_page_indexed = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @r4k_blast_dcache_page_indexed_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r4k_blast_dcache_page_indexed_setup() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @cpu_dcache_line_size()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @cache_noop, align 8
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @r4k_blast_dcache_page_indexed, align 8
  br label %32

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i8*, i8** @blast_dcache16_page_indexed, align 8
  store i8* %12, i8** @r4k_blast_dcache_page_indexed, align 8
  br label %31

13:                                               ; preds = %8
  %14 = load i64, i64* %1, align 8
  %15 = icmp eq i64 %14, 32
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8*, i8** @blast_dcache32_page_indexed, align 8
  store i8* %17, i8** @r4k_blast_dcache_page_indexed, align 8
  br label %30

18:                                               ; preds = %13
  %19 = load i64, i64* %1, align 8
  %20 = icmp eq i64 %19, 64
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** @blast_dcache64_page_indexed, align 8
  store i8* %22, i8** @r4k_blast_dcache_page_indexed, align 8
  br label %29

23:                                               ; preds = %18
  %24 = load i64, i64* %1, align 8
  %25 = icmp eq i64 %24, 128
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8*, i8** @blast_dcache128_page_indexed, align 8
  store i8* %27, i8** @r4k_blast_dcache_page_indexed, align 8
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %28, %21
  br label %30

30:                                               ; preds = %29, %16
  br label %31

31:                                               ; preds = %30, %11
  br label %32

32:                                               ; preds = %31, %5
  ret void
}

declare dso_local i64 @cpu_dcache_line_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
