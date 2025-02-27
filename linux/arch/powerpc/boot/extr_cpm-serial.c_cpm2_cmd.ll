; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_cpm-serial.c_cpm2_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_cpm-serial.c_cpm2_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpcr = common dso_local global i32 0, align 4
@cpm_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cpm2_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpm2_cmd(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %8, %1
  %4 = load i32, i32* @cpcr, align 4
  %5 = call i32 @in_be32(i32 %4)
  %6 = and i32 %5, 65536
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %3

9:                                                ; preds = %3
  %10 = load i32, i32* @cpcr, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @cpm_cmd, align 4
  %13 = or i32 %11, %12
  %14 = or i32 %13, 65536
  %15 = call i32 @out_be32(i32 %10, i32 %14)
  br label %16

16:                                               ; preds = %21, %9
  %17 = load i32, i32* @cpcr, align 4
  %18 = call i32 @in_be32(i32 %17)
  %19 = and i32 %18, 65536
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %16

22:                                               ; preds = %16
  ret void
}

declare dso_local i32 @in_be32(i32) #1

declare dso_local i32 @out_be32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
