; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-opc.c_insert_sprg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-opc.c_insert_sprg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPC_OPCODE_BOOKE = common dso_local global i32 0, align 4
@PPC_OPCODE_403 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid sprg number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i8**)* @insert_sprg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insert_sprg(i64 %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp sgt i64 %9, 7
  br i1 %10, label %21, label %11

11:                                               ; preds = %4
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, 3
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PPC_OPCODE_BOOKE, align 4
  %17 = load i32, i32* @PPC_OPCODE_403, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %4
  %22 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load i8**, i8*** %8, align 8
  store i8* %22, i8** %23, align 8
  br label %24

24:                                               ; preds = %21, %14, %11
  %25 = load i64, i64* %6, align 8
  %26 = icmp sle i64 %25, 3
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, 256
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24
  %32 = load i64, i64* %6, align 8
  %33 = or i64 %32, 16
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %36, 23
  %38 = shl i64 %37, 16
  %39 = or i64 %35, %38
  ret i64 %39
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
