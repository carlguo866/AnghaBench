; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_common-pci.c_local_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_common-pci.c_local_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"local_write_config %#x to %d size %d\0A\00", align 1
@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @local_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_write_config(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %15, 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @local_byte_lane_enable_bits(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 8, %26
  %28 = shl i32 %25, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, -4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @crp_write(i32 %32, i32 %33)
  %35 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %22
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @local_byte_lane_enable_bits(i32, i32) #1

declare dso_local i32 @crp_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
