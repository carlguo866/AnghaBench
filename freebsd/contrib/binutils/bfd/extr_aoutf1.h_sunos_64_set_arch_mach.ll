; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutf1.h_sunos_64_set_arch_mach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutf1.h_sunos_64_set_arch_mach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_arch_m68k = common dso_local global i32 0, align 4
@bfd_mach_m68000 = common dso_local global i64 0, align 8
@bfd_mach_m68010 = common dso_local global i64 0, align 8
@bfd_mach_m68020 = common dso_local global i64 0, align 8
@bfd_arch_sparc = common dso_local global i32 0, align 4
@bfd_mach_sparc_sparclet = common dso_local global i64 0, align 8
@bfd_mach_sparc_sparclite_le = common dso_local global i64 0, align 8
@bfd_arch_i386 = common dso_local global i32 0, align 4
@bfd_arch_obscure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @sunos_set_arch_mach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunos_set_arch_mach(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %29 [
    i32 128, label %8
    i32 136, label %11
    i32 134, label %11
    i32 135, label %14
    i32 133, label %14
    i32 131, label %17
    i32 130, label %19
    i32 129, label %22
    i32 138, label %25
    i32 137, label %25
    i32 132, label %27
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @bfd_arch_m68k, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* @bfd_mach_m68000, align 8
  store i64 %10, i64* %6, align 8
  br label %31

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @bfd_arch_m68k, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* @bfd_mach_m68010, align 8
  store i64 %13, i64* %6, align 8
  br label %31

14:                                               ; preds = %2, %2
  %15 = load i32, i32* @bfd_arch_m68k, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i64, i64* @bfd_mach_m68020, align 8
  store i64 %16, i64* %6, align 8
  br label %31

17:                                               ; preds = %2
  %18 = load i32, i32* @bfd_arch_sparc, align 4
  store i32 %18, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %31

19:                                               ; preds = %2
  %20 = load i32, i32* @bfd_arch_sparc, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* @bfd_mach_sparc_sparclet, align 8
  store i64 %21, i64* %6, align 8
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @bfd_arch_sparc, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* @bfd_mach_sparc_sparclite_le, align 8
  store i64 %24, i64* %6, align 8
  br label %31

25:                                               ; preds = %2, %2
  %26 = load i32, i32* @bfd_arch_i386, align 4
  store i32 %26, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @bfd_arch_m68k, align 4
  store i32 %28, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @bfd_arch_obscure, align 4
  store i32 %30, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %29, %27, %25, %22, %19, %17, %14, %11, %8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @bfd_set_arch_mach(i32* %32, i32 %33, i64 %34)
  ret void
}

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
