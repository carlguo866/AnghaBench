; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_add_CFA_insn_reg_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_add_CFA_insn_reg_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_insn_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @cfi_add_CFA_insn_reg_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_add_CFA_insn_reg_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfi_insn_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call %struct.cfi_insn_data* (...) @alloc_cfi_insn_data()
  store %struct.cfi_insn_data* %8, %struct.cfi_insn_data** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %11 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %14 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %19 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  ret void
}

declare dso_local %struct.cfi_insn_data* @alloc_cfi_insn_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
