; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_write_reg_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_write_reg_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, i32, i32, i32)* @r820t_write_reg_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_write_reg_mask(%struct.r820t_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.r820t_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.r820t_priv*, %struct.r820t_priv** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @r820t_read_cache_reg(%struct.r820t_priv* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %32

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %24, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.r820t_priv*, %struct.r820t_priv** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @r820t_write(%struct.r820t_priv* %29, i32 %30, i32* %10, i32 1)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %20, %18
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @r820t_read_cache_reg(%struct.r820t_priv*, i32) #1

declare dso_local i32 @r820t_write(%struct.r820t_priv*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
