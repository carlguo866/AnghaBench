; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_cmp_8_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_cmp_8_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i8* null, align 8
@DX = common dso_local global i8* null, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i8* null, align 8
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_cmp_8_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_cmp_8_d() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @DY, align 8
  %5 = call i8* @MASK_OUT_ABOVE_8(i8* %4)
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** @DX, align 8
  %7 = call i8* @MASK_OUT_ABOVE_8(i8* %6)
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = ptrtoint i8* %8 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @NFLAG_8(i8* %14)
  store i32 %15, i32* @FLAG_N, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @MASK_OUT_ABOVE_8(i8* %16)
  store i8* %17, i8** @FLAG_Z, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @VFLAG_SUB_8(i8* %18, i8* %19, i8* %20)
  store i32 %21, i32* @FLAG_V, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @CFLAG_8(i8* %22)
  store i32 %23, i32* @FLAG_C, align 4
  ret void
}

declare dso_local i8* @MASK_OUT_ABOVE_8(i8*) #1

declare dso_local i32 @NFLAG_8(i8*) #1

declare dso_local i32 @VFLAG_SUB_8(i8*, i8*, i8*) #1

declare dso_local i32 @CFLAG_8(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
