; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_string.c_pmcstat_string_compute_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_string.c_pmcstat_string_compute_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMCSTAT_HASH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmcstat_string_compute_hash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -2128831035, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = xor i32 %9, %12
  %14 = mul i32 %13, 16777619
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %8
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  br label %4

18:                                               ; preds = %4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PMCSTAT_HASH_MASK, align 4
  %21 = and i32 %19, %20
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
