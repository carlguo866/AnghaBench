; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_howto_from_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_howto_from_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@elf32_arm_howto_table_1 = common dso_local global i32* null, align 8
@R_ARM_RREL32 = common dso_local global i32 0, align 4
@elf32_arm_howto_table_2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @elf32_arm_howto_from_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @elf32_arm_howto_from_type(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** @elf32_arm_howto_table_1, align 8
  %6 = call i32 @NUM_ELEM(i32* %5)
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32*, i32** @elf32_arm_howto_table_1, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %2, align 8
  br label %32

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @R_ARM_RREL32, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @R_ARM_RREL32, align 4
  %20 = load i32*, i32** @elf32_arm_howto_table_2, align 8
  %21 = call i32 @NUM_ELEM(i32* %20)
  %22 = add i32 %19, %21
  %23 = icmp ult i32 %18, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32*, i32** @elf32_arm_howto_table_2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @R_ARM_RREL32, align 4
  %28 = sub i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32* %30, i32** %2, align 8
  br label %32

31:                                               ; preds = %17, %13
  store i32* null, i32** %2, align 8
  br label %32

32:                                               ; preds = %31, %24, %8
  %33 = load i32*, i32** %2, align 8
  ret i32* %33
}

declare dso_local i32 @NUM_ELEM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
