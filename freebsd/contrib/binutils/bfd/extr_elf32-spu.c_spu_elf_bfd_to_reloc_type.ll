; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_bfd_to_reloc_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_bfd_to_reloc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_SPU_NONE = common dso_local global i32 0, align 4
@R_SPU_ADDR10 = common dso_local global i32 0, align 4
@R_SPU_ADDR16 = common dso_local global i32 0, align 4
@R_SPU_ADDR16_LO = common dso_local global i32 0, align 4
@R_SPU_ADDR16_HI = common dso_local global i32 0, align 4
@R_SPU_ADDR18 = common dso_local global i32 0, align 4
@R_SPU_REL16 = common dso_local global i32 0, align 4
@R_SPU_ADDR7 = common dso_local global i32 0, align 4
@R_SPU_REL9 = common dso_local global i32 0, align 4
@R_SPU_REL9I = common dso_local global i32 0, align 4
@R_SPU_ADDR10I = common dso_local global i32 0, align 4
@R_SPU_ADDR16I = common dso_local global i32 0, align 4
@R_SPU_ADDR32 = common dso_local global i32 0, align 4
@R_SPU_REL32 = common dso_local global i32 0, align 4
@R_SPU_PPU32 = common dso_local global i32 0, align 4
@R_SPU_PPU64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @spu_elf_bfd_to_reloc_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_elf_bfd_to_reloc_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %5 [
    i32 139, label %7
    i32 137, label %9
    i32 133, label %11
    i32 141, label %13
    i32 136, label %15
    i32 132, label %17
    i32 135, label %19
    i32 134, label %21
    i32 131, label %23
    i32 130, label %25
    i32 140, label %27
    i32 138, label %29
    i32 143, label %31
    i32 142, label %33
    i32 129, label %35
    i32 128, label %37
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @R_SPU_NONE, align 4
  store i32 %6, i32* %2, align 4
  br label %39

7:                                                ; preds = %1
  %8 = load i32, i32* @R_SPU_ADDR10, align 4
  store i32 %8, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load i32, i32* @R_SPU_ADDR16, align 4
  store i32 %10, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load i32, i32* @R_SPU_ADDR16_LO, align 4
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load i32, i32* @R_SPU_ADDR16_HI, align 4
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load i32, i32* @R_SPU_ADDR18, align 4
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %1
  %18 = load i32, i32* @R_SPU_REL16, align 4
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load i32, i32* @R_SPU_ADDR7, align 4
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load i32, i32* @R_SPU_NONE, align 4
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %1
  %24 = load i32, i32* @R_SPU_REL9, align 4
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %1
  %26 = load i32, i32* @R_SPU_REL9I, align 4
  store i32 %26, i32* %2, align 4
  br label %39

27:                                               ; preds = %1
  %28 = load i32, i32* @R_SPU_ADDR10I, align 4
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load i32, i32* @R_SPU_ADDR16I, align 4
  store i32 %30, i32* %2, align 4
  br label %39

31:                                               ; preds = %1
  %32 = load i32, i32* @R_SPU_ADDR32, align 4
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @R_SPU_REL32, align 4
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @R_SPU_PPU32, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @R_SPU_PPU64, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
