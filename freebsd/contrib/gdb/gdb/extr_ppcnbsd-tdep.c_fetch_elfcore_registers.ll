; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-tdep.c_fetch_elfcore_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-tdep.c_fetch_elfcore_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZEOF_STRUCT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Wrong size register set in core file.\00", align 1
@SIZEOF_STRUCT_FPREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Wrong size FP register set in core file.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @fetch_elfcore_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_elfcore_registers(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %30 [
    i32 0, label %10
    i32 2, label %20
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SIZEOF_STRUCT_REG, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %19

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @ppcnbsd_supply_reg(i8* %17, i32 -1)
  br label %19

19:                                               ; preds = %16, %14
  br label %31

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SIZEOF_STRUCT_FPREG, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @ppcnbsd_supply_fpreg(i8* %27, i32 -1)
  br label %29

29:                                               ; preds = %26, %24
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %29, %19
  ret void
}

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @ppcnbsd_supply_reg(i8*, i32) #1

declare dso_local i32 @ppcnbsd_supply_fpreg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
