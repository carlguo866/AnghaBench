; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_entry_mark_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_entry_mark_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [69 x i8] c"\0AWARNING: Entry %d already on list %s, but we tried to add it to %s\0A\00", align 1
@__cvmx_pow_list_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*)* @__cvmx_pow_entry_mark_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_pow_entry_mark_list(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64*, i64** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 %15, i64* %19, align 8
  store i32 0, i32* %4, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i8**, i8*** @__cvmx_pow_list_names, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8*, i8** %22, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** @__cvmx_pow_list_names, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %29, i8* %33)
  store i32 -1, i32* %4, align 4
  br label %35

35:                                               ; preds = %20, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @printf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
