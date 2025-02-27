; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-r4k.c_r4k_flush_data_cache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_c-r4k.c_r4k_flush_data_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @r4k_flush_data_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r4k_flush_data_cache_page(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i64 (...) @in_atomic()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @local_r4k_flush_data_cache_page(i8* %7)
  br label %13

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @r4k_on_each_cpu(i32 (i8*)* @local_r4k_flush_data_cache_page, i8* %11, i32 1)
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

declare dso_local i64 @in_atomic(...) #1

declare dso_local i32 @local_r4k_flush_data_cache_page(i8*) #1

declare dso_local i32 @r4k_on_each_cpu(i32 (i8*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
