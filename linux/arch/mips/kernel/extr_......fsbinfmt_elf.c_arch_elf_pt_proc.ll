; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_......fsbinfmt_elf.c_arch_elf_pt_proc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_......fsbinfmt_elf.c_arch_elf_pt_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i32 }
%struct.elf_phdr = type { i32 }
%struct.file = type { i32 }
%struct.arch_elf_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elfhdr*, %struct.elf_phdr*, %struct.file*, i32, %struct.arch_elf_state*)* @arch_elf_pt_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arch_elf_pt_proc(%struct.elfhdr* %0, %struct.elf_phdr* %1, %struct.file* %2, i32 %3, %struct.arch_elf_state* %4) #0 {
  %6 = alloca %struct.elfhdr*, align 8
  %7 = alloca %struct.elf_phdr*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.arch_elf_state*, align 8
  store %struct.elfhdr* %0, %struct.elfhdr** %6, align 8
  store %struct.elf_phdr* %1, %struct.elf_phdr** %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.arch_elf_state* %4, %struct.arch_elf_state** %10, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
