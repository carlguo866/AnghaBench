; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_file_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_file_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32)* }

@thumb_call_reg_needed = common dso_local global i32 0, align 4
@text_section = common dso_local global i32 0, align 4
@asm_out_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"\09.code 16\0A\00", align 1
@LR_REGNUM = common dso_local global i32 0, align 4
@thumb_call_via_label = common dso_local global i64* null, align 8
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\09bx\09%r\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @arm_file_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_file_end() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @thumb_call_reg_needed, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %38

6:                                                ; preds = %0
  %7 = load i32, i32* @text_section, align 4
  %8 = call i32 @switch_to_section(i32 %7)
  %9 = load i32, i32* @asm_out_file, align 4
  %10 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @asm_out_file, align 4
  %12 = call i32 @ASM_OUTPUT_ALIGN(i32 %11, i32 1)
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %35, %6
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @LR_REGNUM, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load i64*, i64** @thumb_call_via_label, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %27 = load i32, i32* @asm_out_file, align 4
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @CODE_LABEL_NUMBER(i64 %28)
  %30 = call i32 %26(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @asm_out_file, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %25, %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %13

38:                                               ; preds = %5, %13
  ret void
}

declare dso_local i32 @switch_to_section(i32) #1

declare dso_local i32 @asm_fprintf(i32, i8*, ...) #1

declare dso_local i32 @ASM_OUTPUT_ALIGN(i32, i32) #1

declare dso_local i32 @CODE_LABEL_NUMBER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
