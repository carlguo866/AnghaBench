; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_s_is_linkonce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_s_is_linkonce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@SEC_LINK_ONCE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @s_is_linkonce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_is_linkonce(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @S_GET_SEGMENT(i32* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @S_IS_LOCAL(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @stdoutput, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @bfd_get_section_flags(i32 %18, i64 %19)
  %21 = load i32, i32* @SEC_LINK_ONCE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %17
  br label %27

27:                                               ; preds = %26, %13, %2
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @S_IS_LOCAL(i32*) #1

declare dso_local i32 @bfd_get_section_flags(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
