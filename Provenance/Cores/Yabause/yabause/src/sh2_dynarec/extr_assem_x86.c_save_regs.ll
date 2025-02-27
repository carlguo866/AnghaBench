; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_save_regs.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_save_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_REGS = common dso_local global i32 0, align 4
@EXCLUDE_REG = common dso_local global i32 0, align 4
@slave = common dso_local global i64 0, align 8
@ESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_regs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 7
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @count_bits(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %31, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @HOST_REGS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @EXCLUDE_REG, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @emit_pushreg(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %12

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i64, i64* @slave, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* @ESP, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 4, %40
  %42 = sub nsw i32 0, %41
  %43 = mul nsw i32 %42, 4
  %44 = load i32, i32* @ESP, align 4
  %45 = call i32 @emit_addimm(i32 %39, i32 %43, i32 %44)
  br label %54

46:                                               ; preds = %35
  %47 = load i32, i32* @ESP, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 5, %48
  %50 = sub nsw i32 0, %49
  %51 = mul nsw i32 %50, 4
  %52 = load i32, i32* @ESP, align 4
  %53 = call i32 @emit_addimm(i32 %47, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %38
  ret void
}

declare dso_local i32 @count_bits(i32) #1

declare dso_local i32 @emit_pushreg(i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
