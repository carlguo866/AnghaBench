; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc_new.c_Inst.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc_new.c_Inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = common dso_local global i32* null, align 8
@compiledOfs = common dso_local global i64 0, align 8
@pass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @Inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Inst(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = shl i32 %13, 21
  %15 = or i32 %12, %14
  %16 = load i32, i32* %9, align 4
  %17 = shl i32 %16, 16
  %18 = or i32 %15, %17
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 %19, 11
  %21 = or i32 %18, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** @buf, align 8
  %24 = load i64, i64* @compiledOfs, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load i64, i64* @compiledOfs, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* @compiledOfs, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
