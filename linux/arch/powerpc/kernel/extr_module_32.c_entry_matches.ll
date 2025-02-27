; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_32.c_entry_matches.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_32.c_entry_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_plt_entry = type { i32* }

@PPC_INST_ADDIS = common dso_local global i32 0, align 4
@R12 = common dso_local global i32 0, align 4
@PPC_INST_ADDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc_plt_entry*, i32)* @entry_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entry_matches(%struct.ppc_plt_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppc_plt_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.ppc_plt_entry* %0, %struct.ppc_plt_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %4, align 8
  %7 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PPC_INST_ADDIS, align 4
  %12 = load i32, i32* @R12, align 4
  %13 = call i32 @__PPC_RT(i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @PPC_HA(i32 %15)
  %17 = or i32 %14, %16
  %18 = icmp ne i32 %10, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %4, align 8
  %22 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PPC_INST_ADDI, align 4
  %27 = load i32, i32* @R12, align 4
  %28 = call i32 @__PPC_RT(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* @R12, align 4
  %31 = call i32 @__PPC_RA(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @PPC_LO(i32 %33)
  %35 = or i32 %32, %34
  %36 = icmp ne i32 %25, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %39

38:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @__PPC_RT(i32) #1

declare dso_local i32 @PPC_HA(i32) #1

declare dso_local i32 @__PPC_RA(i32) #1

declare dso_local i32 @PPC_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
