; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/dce112/extr_command_table_helper2_dce112.c_engine_bp_to_atom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/dce112/extr_command_table_helper2_dce112.c_engine_bp_to_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASIC_INT_DIG1_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG2_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG3_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG4_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG5_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG6_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DIG7_ENCODER_ID = common dso_local global i32 0, align 4
@ASIC_INT_DAC1_ENCODER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @engine_bp_to_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @engine_bp_to_atom(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %34 [
    i32 134, label %10
    i32 133, label %13
    i32 132, label %16
    i32 131, label %19
    i32 130, label %22
    i32 129, label %25
    i32 128, label %28
    i32 135, label %31
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @ASIC_INT_DIG1_ENCODER_ID, align 4
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  store i32 1, i32* %5, align 4
  br label %35

13:                                               ; preds = %8
  %14 = load i32, i32* @ASIC_INT_DIG2_ENCODER_ID, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  store i32 1, i32* %5, align 4
  br label %35

16:                                               ; preds = %8
  %17 = load i32, i32* @ASIC_INT_DIG3_ENCODER_ID, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  store i32 1, i32* %5, align 4
  br label %35

19:                                               ; preds = %8
  %20 = load i32, i32* @ASIC_INT_DIG4_ENCODER_ID, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  store i32 1, i32* %5, align 4
  br label %35

22:                                               ; preds = %8
  %23 = load i32, i32* @ASIC_INT_DIG5_ENCODER_ID, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  store i32 1, i32* %5, align 4
  br label %35

25:                                               ; preds = %8
  %26 = load i32, i32* @ASIC_INT_DIG6_ENCODER_ID, align 4
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  store i32 1, i32* %5, align 4
  br label %35

28:                                               ; preds = %8
  %29 = load i32, i32* @ASIC_INT_DIG7_ENCODER_ID, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  store i32 1, i32* %5, align 4
  br label %35

31:                                               ; preds = %8
  %32 = load i32, i32* @ASIC_INT_DAC1_ENCODER_ID, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  store i32 1, i32* %5, align 4
  br label %35

34:                                               ; preds = %8
  br label %35

35:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
