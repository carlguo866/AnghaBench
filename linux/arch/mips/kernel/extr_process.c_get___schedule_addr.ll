; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_get___schedule_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_get___schedule_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@schedule = common dso_local global i64 0, align 8
@j_op = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get___schedule_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get___schedule_addr() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %union.mips_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @schedule, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %union.mips_instruction*
  store %union.mips_instruction* %7, %union.mips_instruction** %2, align 8
  store i32 8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %27, %0
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %union.mips_instruction*, %union.mips_instruction** %2, align 8
  %14 = bitcast %union.mips_instruction* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @j_op, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %union.mips_instruction*, %union.mips_instruction** %2, align 8
  %21 = load %union.mips_instruction*, %union.mips_instruction** %2, align 8
  %22 = bitcast %union.mips_instruction* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @J_TARGET(%union.mips_instruction* %20, i32 %24)
  store i64 %25, i64* %1, align 8
  br label %33

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load %union.mips_instruction*, %union.mips_instruction** %2, align 8
  %31 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %30, i32 1
  store %union.mips_instruction* %31, %union.mips_instruction** %2, align 8
  br label %8

32:                                               ; preds = %8
  store i64 0, i64* %1, align 8
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i64, i64* %1, align 8
  ret i64 %34
}

declare dso_local i64 @J_TARGET(%union.mips_instruction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
